module Dtos
  class DailyReportDto
    attr_accessor :date, :day_of_week, :arrive_time, :leave_time, :predetermined_time,
    :shift_work, :shift_work_mid, :take_off_type_id, :overtime_work, :overtime_work_mid,
    :use_substitute, :use_compensatory, :get_substitute, :get_substitute_mid,
    :get_compensatory, :get_compensatory_mid, :all_overtime, :take_off, :comment
  end
end