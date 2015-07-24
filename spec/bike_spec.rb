require 'bike'

describe Bike do
	it {is_expected.to respond_to :working?}

	it { is_expected.to be_working}

	# it 'checks if bike responds to report_broken' do
	# 	expect(subject).to respond_to :report_broken
	# end

	it 'checks if bike is broken when reported broken' do
		subject.report_broken
		expect(subject).to be_broken
	end



end
