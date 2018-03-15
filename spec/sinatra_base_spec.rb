require 'issue_tracker/controllers/controller'

describe SinatraBase do
  context '#initialize' do
    context 'given no arguments' do
      it 'initializes without exception' do
        SinatraBase.new
      end
    end
  end
end
