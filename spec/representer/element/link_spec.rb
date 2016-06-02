require 'spec_helper'

describe Representer::Element::Link do
  let(:link) { described_class.new(:test) }

  describe '#method' do
    subject { link.method = method }

    context 'when not supported method' do
      let(:method) { described_class::SUPPORTED_METHODS.sample }

      it 'should set attribute' do
        subject
        expect(link.method).to eq method
      end
    end

    context 'when supported method' do
      let(:method) { 'HOGE' }

      it { expect { subject }.to raise_error ArgumentError }
    end
  end

  describe '#path' do
    subject { link.path }
    before { link.path = path }

    context 'when last character is not slash' do
      let(:path) { '/users/:id' }

      it { is_expected.to eq path }
    end

    context 'when last character is slash' do
      let(:path) { '/users/:id/' }

      it { is_expected.to eq '/users/:id' }
    end
  end
end
