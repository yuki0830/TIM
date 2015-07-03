#!/usr/bin/ruby
require 'date'

class WebsocketController < WebsocketRails::BaseController
  def message_receive
    received_message = message()
    dispatch(received_message)
  end

  def getMonthData
    report = TDailyReport.new()
    #5.times do |i|
     # list[i] = report.getDummyData('2015060' + (i+1).to_s)
    #end
    #dummyData = report.getDummyData('20150629')
    list = []
    30.times do |i|
      date = Date.new(2015, 4, i+1)
      list[i] = report.getDummyData('201504' + sprintf("%02d", i+1), date.wday)
    end
    broadcast_message(:websocket_report, list)
  end 

  def getYearData
    broadcast_message(:websocket_report, 'getYearData')
  end

  def dispatch(message)
    mode = message['mode']
    targetObject = message['targetObject']
    userId = message['userId']
    targetMethodName = "#{mode}#{targetObject}"
    send(targetMethodName)
  end
end

