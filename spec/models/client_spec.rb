require 'rails_helper'

RSpec.describe Client, type: :model do
  describe '#create' do
    before do
      @client = FactoryBot.build(:client)
    end

    context '顧客登録ができる時' do
      it 'last_name、first_name、last_kana、first_kana、email、phone_numが存在すれば登録できること' do
        expect(@client).to be_valid
      end
      it 'phone_numが12文字以上であれば登録できること' do
        @client.phone_num = "00011112222"
        expect(@client).to be_valid
      end
    end

    context '顧客登録ができない時' do
      it 'last_nameが空では登録できないこと' do
        @client.last_name = nil
        @client.valid?
        expect(@client.errors.full_messages).to include("Last name can't be blank")
      end
      it 'last_nameは、全角（漢字・ひらがな・カタカナ）での入力が必須であること' do
        @client.last_name = 'aaa'
        @client.valid?
        expect(@client.errors.full_messages).to include('Last name 全角文字を使用してください')
      end

      it 'first_nameが空では登録できないこと' do
        @client.first_name = nil
        @client.valid?
        expect(@client.errors.full_messages).to include("First name can't be blank")
      end
      it 'first_nameは、全角（漢字・ひらがな・カタカナ）での入力が必須であること' do
        @client.first_name = 'aaa'
        @client.valid?
        expect(@client.errors.full_messages).to include('First name 全角文字を使用してください')
      end

      it 'last_kanaが空では登録できないこと' do
        @client.last_kana = nil
        @client.valid?
        expect(@client.errors.full_messages).to include("Last kana can't be blank")
      end
      it 'last_kanaは、全角での入力が必須であること' do
        @client.last_kana = 'aaa'
        @client.valid?
        expect(@client.errors.full_messages).to include('Last kana 全角カタカナを使用してください')
      end
      it 'last_kanaは、カタカナでの入力が必須であること' do
        @client.last_kana = 'あああ'
        @client.valid?
        expect(@client.errors.full_messages).to include('Last kana 全角カタカナを使用してください')
      end

      it 'first_kanaが空では登録できないこと' do
        @client.first_kana = nil
        @client.valid?
        expect(@client.errors.full_messages).to include("First kana can't be blank")
      end
      it 'first_kanaは、全角での入力が必須であること' do
        @client.first_kana = 'aaa'
        @client.valid?
        expect(@client.errors.full_messages).to include('First kana 全角カタカナを使用してください')
      end
      it 'first_kanaは、カタカナでの入力が必須であること' do
        @client.first_kana = 'あああ'
        @client.valid?
        expect(@client.errors.full_messages).to include('First kana 全角カタカナを使用してください')
      end

      it 'phone_numが空では登録できないこと' do
        @client.phone_num = nil
        @client.valid?
        expect(@client.errors.full_messages).to include("Phone num is invalid")
      end
      it 'phone_numが13文字以上では登録できないこと' do
        @client.phone_num = "000011112222"
        @client.valid?
        expect(@client.errors.full_messages).to include("Phone num is too long (maximum is 11 characters)")
      end

      it 'emailが空では登録できないこと' do
        @client.email = nil
        @client.valid?
        expect(@client.errors.full_messages).to include("Email can't be blank")
      end
      it 'emailに@が含まれていなければ登録できないこと' do
        @client.email = '1a1a1ayahoo.co.jp'
        @client.valid?
        expect(@client.errors.full_messages).to include('Email is invalid')
      end
      it 'emailに半角英数字以外が含まれていると登録できないこと' do
        @client.email = 'あああ@yahoo.co.jp'
        @client.valid?
        expect(@client.errors.full_messages).to include('Email is invalid')
      end
      it 'emailに半角英数字以外が含まれていると登録できないこと' do
        @client.email = 'アアア@yahoo.co.jp'
        @client.valid?
        expect(@client.errors.full_messages).to include('Email is invalid')
      end
      it 'emailに半角英数字以外が含まれていると登録できないこと' do
        @client.email = 'ｱｱｱ@yahoo.co.jp'
        @client.valid?
        expect(@client.errors.full_messages).to include('Email is invalid')
      end
      it 'emailに半角英数字以外が含まれていると登録できないこと' do
        @client.email = '亜嗚呼@yahoo.co.jp'
        @client.valid?
        expect(@client.errors.full_messages).to include('Email is invalid')
      end
    end
  end
end
