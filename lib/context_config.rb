# frozen_string_literal: true

class ContextConfig
  attr_accessor :units, :attributes, :custom_assignments, :overrides,
                :event_logger, :publish_delay, :refresh_interval

  def self.create
    ContextConfig.new
  end

  def set_units(unit_type, uid)
    @units ||= {}
    @units[unit_type.to_sym] = uid
    self
  end

  def unit(unit_type)
    @units.slice[unit_type.to_sym]
  end

  def set_attribute(name, value)
    @attributes ||= {}
    @attributes[name.to_sym] = value
    self
  end

  def attribute(name)
    @attributes.slice[name.to_sym]
  end

  def set_override(experiment_name, variant)
    @overrides ||= {}
    @overrides[experiment_name.to_sym] = variant
    self
  end

  def override(experiment_name)
    @overrides.slice[experiment_name.to_sym]
  end

  def set_custom_assignment(experiment_name, variant)
    @custom_assignments ||= {}
    @custom_assignments[experiment_name.to_sym] = variant
    self
  end

  def custom_assignment(experiment_name)
    @custom_assignments.slice[experiment_name.to_sym]
  end
end
