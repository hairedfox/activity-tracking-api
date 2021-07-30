class EmailValidator < ActiveModel::EachValidator
  EMAIL_FORMAT = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.freeze

  def validate_each(record, attribute, value)
    record.errors.add attribute, (options[:message] || 'is not an email') unless value =~ EMAIL_FORMAT
  end
end
