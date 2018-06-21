class Transfer

  attr_accessor :sender, :receiver, :amount
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
  
  
  
      describe 'initialize' do

      it "initializes with a sender" do
        expect(transfer.sender).to eq(amanda)
      end

      it "initializes with a receiver" do
        expect(transfer.receiver).to eq(avi)
      end

      it "always initializes with a status of 'pending'" do
        expect(transfer.status).to eq("pending")
      end

      it "initializes with a transfer amount" do
        expect(transfer.amount).to eq(50)
      end
  
  
end
