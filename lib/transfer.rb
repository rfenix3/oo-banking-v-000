class Transfer

  attr_accessor :sender, :receiver, :amount
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end
  
  
  
      describe 'initialize' do

      it "always initializes with a status of 'pending'" do
        expect(transfer.status).to eq("pending")
      end

      it "initializes with a transfer amount" do
        expect(transfer.amount).to eq(50)
      end
  
  
end
