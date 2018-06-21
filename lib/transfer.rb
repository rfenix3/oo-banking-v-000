class Transfer

  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end
  
  def valid?
    @sender.valid? 
  end
  

  
end

  describe '#valid?' do
      it "can check that both accounts are valid" do
        expect(avi.valid?).to eq (true)
        expect(amanda.valid?).to eq(true)
        expect(transfer.valid?).to eq(true)
      end

      it "calls on the sender and reciever's #valid? methods" do
        transfer_class = File.read("lib/transfer.rb")

        expect(amanda).to receive(:valid?).and_return(true)
        expect(avi).to receive(:valid?).and_return(true)

        transfer.valid?
      end
    end

    describe '#execute_transaction' do
      it "can execute a successful transaction between two accounts" do
        transfer.execute_transaction
        expect(amanda.balance).to eq(950)
        expect(avi.balance).to eq(1050)
        expect(transfer.status).to eq("complete")
      end

      it "each transfer can only happen once" do
        transfer.execute_transaction
        expect(amanda.balance).to eq(950)
        expect(avi.balance).to eq(1050)
        expect(transfer.status).to eq("complete")
        transfer.execute_transaction
        expect(amanda.balance).to eq(950)
        expect(avi.balance).to eq(1050)
      end
