require 'spec_helper'

describe Representer do
  describe '.load' do
    subject { described_class.load file }

    let(:file) { File.expand_path '../fixtures/user.conf', __FILE__ }

    it { expect { subject }.not_to raise_error }

    it 'should register of namespace' do
      described_class.load file

      expect(described_class.registered?(:user)).to be_truthy
      expect(described_class.fetch(:user)).to be_instance_of Representer::Namespace
    end
  end
end
