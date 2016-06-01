require 'spec_helper'

describe Representer do
  describe '.load' do
    subject { described_class.load file }

    let(:file) { File.expand_path '../fixtures/user.conf', __FILE__ }

    it { expect { subject }.not_to raise_error }
  end
end
