require 'date'


class TDailyReport < ActiveRecord::Base
  def setDummyData(date)
    result = TDailyReport.new()
    result.date = date
    result.day_of_week = 'THU'
    result.arrive_time = '09:00:00'
    result.leave_time = '18:00:00'
    result.predetermined_time = '08:00:00'
    result.shift_work = '00:00:00'
    result.shift_work_mid = '00:00:00'
    result.take_off_type_id = nil
    result.overtime_work = '00:00:00'
    result.overtime_work_mid = '00:00:00'
    result.use_substitute = '00:00:00'
    result.use_compensatory = '00:00:00'
    result.get_substitute = '00:00:00'
    result.get_substitute_mid = '00:00:00'
    result.get_compensatory = '00:00:00'
    result.get_compensatory_mid = '00:00:00'
    result.all_overtime = '00:00:00'
    result.take_off = false
    result.comment = 'test'
    return result
  end

  def getDummyData(date, wday)
    dummy = setDummyData(date)
    util = Utils::CommonUtility.new
    return util.fixParameters('TDailyReport', 'DailyReportDto', dummy)
  end
end