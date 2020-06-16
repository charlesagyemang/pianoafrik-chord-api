class UssdController < ApplicationController

  def home

    incoming_request = params[:ussd]
    resp = {}

    if incoming_request[:mode] === "start"
      resp = {
        mode: "more",
        text: "Welcome to Apomden App.\n Choose an option: \n1. Balance Enquiry \n2. Send Money. \n 3. Contact Us.",
        customData: "Step 1",
      }
    else
      case incoming_request[:customData]
      when "Step 1"
        resp = {
          mode: "more",
          text: "Step 2. Choose an option: \n1. Own Number \n2. Another Number. \n 3. Other.",
          customData: "Step 2",
        }
      when "Step 2"
        resp = {
          mode: "more",
          text: "Step 3. Choose an option: \n1. Own Number \n2. Another Number. \n 3. Other.",
          customData: "Step 3",
        }
      when "Step 3"
        resp = {
          mode: "more",
          text: "Step 4. Choose an option: \n1. Own Number \n2. Another Number. \n 3. Other..",
          customData: "Step 4",
        }
      when "Step 4"
        resp = {
          mode: "end",
          text: "You Have Come To The End Of The Road",
          customData: "Step 4",
        }
      else
      end

    end

    render json: resp, status: 200

  end

end
