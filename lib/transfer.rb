class Transfer

  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end
  
  def valid?
    @sender.valid? && @receiver.valid? && @sender.
  end
  
  def execute_transaction
    if @status == "pending" && self.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = 'complete'
    end
  end
  
  
end

    # describe '#execute_transaction' do
    #   it "can execute a successful transaction between two accounts" do
    #     transfer.execute_transaction
    #     expect(amanda.balance).to eq(950)
    #     expect(avi.balance).to eq(1050)
    #     expect(transfer.status).to eq("complete")
    #   end

    #   it "each transfer can only happen once" do
    #     transfer.execute_transaction
    #     expect(amanda.balance).to eq(950)
    #     expect(avi.balance).to eq(1050)
    #     expect(transfer.status).to eq("complete")
    #     transfer.execute_transaction
    #     expect(amanda.balance).to eq(950)
    #     expect(avi.balance).to eq(1050)
    #   end
