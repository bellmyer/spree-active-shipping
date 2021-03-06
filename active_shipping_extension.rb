# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class ActiveShippingExtension < Spree::Extension
  version "0.9.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/active_shipping"
  
  def activate 
    [
      Calculator::Ups::Ground,
      Calculator::Ups::NextDayAir,
      Calculator::Ups::NextDayAirEarlyAm,
      Calculator::Ups::NextDayAirSaver,
      Calculator::Ups::Saver,
      Calculator::Ups::SecondDayAir,
      Calculator::Ups::ThreeDaySelect
    ].each(&:register)
  end  
end