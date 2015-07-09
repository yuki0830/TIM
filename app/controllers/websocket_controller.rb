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
    4.upto(12) do |m|
      row = []
      d = Date.new(2015, m, -1)
      dayCount = d.strftime("%d").to_i
      puts m
      dayCount.times do |i|
        date = Date.new(2015, m, i+1)
        wday = '日'
        case date.wday
          when 0 then
            wday = '日'
          when 1 then
            wday = '月'
          when 2 then
            wday = '火'
          when 3 then
            wday = '水'
          when 4 then
            wday = '木'
          when 5 then
            wday = '金'
          when 6 then
            wday = '土'
        end
        row[i] = report.getDummyData('2015' + sprintf("%02d", m) + sprintf("%02d", i+1), wday)
      end
      list[m] = row
    end
    1.upto(3) do |m|
      row = []
      d = Date.new(2016, m, -1)
      dayCount = d.strftime("%d").to_i
      puts dayCount
      dayCount.times do |i|
        date = Date.new(2016, m, i+1)
        wday = '日'
        case date.wday
          when 0 then
            wday = '日'
          when 1 then
            wday = '月'
          when 2 then
            wday = '火'
          when 3 then
            wday = '水'
          when 4 then
            wday = '木'
          when 5 then
            wday = '金'
          when 6 then
            wday = '土'
        end
        puts '2016' + sprintf("%02d", m) + sprintf("%02d", i+1)
        row[i] = report.getDummyData('2016' + sprintf("%02d", m) + sprintf("%02d", i+1), wday)
      end
      list[m] = row
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

