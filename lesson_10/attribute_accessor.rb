module AttributeAccessor
  def attr_accessor_with_history(*attr_names)
    attr_names.each do |attr_name|
      make_getter(attr_name)
      make_getter("#{attr_name}_history")
      make_setter(attr_name) do |value|
        add_history(attr_name, value)
      end
    end
  end

  def strong_attr_accessor(name, type)
    make_getter(name)
    make_setter(name) do |value|
      if value.is_a?(type)
        true
      else
        raise "Тип не совпадает"
      end
    end   
  end

  protected

  def make_getter(name)
    define_method(name) do
      instance_variable_get("@#{name}".to_sym)
    end
  end 

  def make_setter(name)
    define_method("#{name}=") do |value|
      yield(value) if block_given?
      instance_variable_set("@#{name}".to_sym, value)
    end
  end

  def add_history(name_attr, value)
    if instance_variable_get("@#{name_attr}_history".to_sym)
      history = instance_variable_get("@#{name_attr}_history".to_sym)
    else
      history = instance_variable_set("@#{name_attr}_history".to_sym, [])
    end
    history << value
  end
end