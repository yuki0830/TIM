require 'date'
require 'time'

module Utils
  class CommonUtility
    def convertTime(time)
      return time.strftime("%H:%M")
    end

    def convertDate(date)
      return date.strftime("%m/%d")
    end

    def fixParameters(modelName, dtoName, record)
      result = []
      #dto = dtoName.classify.constantize.new
      modelName.constantize.columns.each do |column|
        if column.name == 'id' || column.name == 'created_at' || column.name == 'updated_at' || column.name == 'daily_id' ||
          column.name == 'history_id' || column.name == 'user_id' || column.name == 'monthly_id' then
          next
        end
        case column.type.to_s
          when 'time' then
            #dto.instance_variable_set("@#{column.name}", convertTime(record[column.name]))
            result.push(convertTime(record[column.name]))
          when 'date' then
            #dto.instance_variable_set("@#{column.name}", convertDate(record[column.name]))
            result.push(convertDate(record[column.name]))
          else
            #dto.instance_variable_set("@#{column.name}", record[column.name])
            result.push(record[column.name])
        end
      end
      return result
    end
  end
end