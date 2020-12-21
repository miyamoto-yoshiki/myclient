require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    context 'ユーザー登録ができる時' do
      it 'last_name、first_name、last_kana、first_kana、email、password、password_confirmationが存在すれば登録できること' do
        expect(@user).to be_valid
      end
    end

    context 'ユーザー登録ができない時' do
      it 'emailが空では登録できないこと' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it 'passwordが空では登録できないこと' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it 'last_nameが空では登録できないこと' do
        @user.last_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name can't be blank")
      end

      it 'last_nameは、全角（漢字・ひらがな・カタカナ）での入力が必須であること' do
        @user.last_name = 'aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('Last name には全角文字を使用してください')
      end

      it 'first_nameが空では登録できないこと' do
        @user.first_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank")
      end

      it 'first_nameは、全角（漢字・ひらがな・カタカナ）での入力が必須であること' do
        @user.first_name = 'aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('First name には全角文字を使用してください')
      end

      it 'last_kanaが空では登録できないこと' do
        @user.last_kana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Last kana can't be blank")
      end

      it 'last_kanaは、全角での入力が必須であること' do
        @user.last_kana = 'aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('Last kana には全角カタカナを使用してください')
      end

      it 'last_kanaは、カタカナでの入力が必須であること' do
        @user.last_kana = 'あああ'
        @user.valid?
        expect(@user.errors.full_messages).to include('Last kana には全角カタカナを使用してください')
      end

      it 'first_kanaが空では登録できないこと' do
        @user.first_kana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("First kana can't be blank")
      end

      it 'first_kanaは、全角での入力が必須であること' do
        @user.first_kana = 'aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('First kana には全角カタカナを使用してください')
      end

      it 'first_kanaは、カタカナでの入力が必須であること' do
        @user.first_kana = 'あああ'
        @user.valid?
        expect(@user.errors.full_messages).to include('First kana には全角カタカナを使用してください')
      end
      
      it 'passwordが6文字以上であれば登録できること' do
        @user.password = 'a12345'
        @user.password_confirmation = 'a12345'
        expect(@user).to be_valid
      end

      it 'passwordが5文字以下であれば登録できないこと' do
        @user.password = 'a1234'
        @user.password_confirmation = 'a1234'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end

      it 'passwordとpassword_confirmationが不一致では登録できないこと' do
        @user.password = 'a12345'
        @user.password_confirmation = 'a23456'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it 'passwordが半角英字のみであれば登録できないこと' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password には英字と数字の両方を含めて設定してください')
      end

      it 'passwordが半角数字のみであれば登録できないこと' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password には英字と数字の両方を含めて設定してください')
      end

      it '重複したemailが存在する場合登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      it 'emailに@が含まれていなければ登録できないこと' do
        @user.email = '1a1a1ayahoo.co.jp'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'emailに半角英数字以外が含まれていると登録できないこと' do
        @user.email = 'あああ@yahoo.co.jp'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'emailに半角英数字以外が含まれていると登録できないこと' do
        @user.email = 'アアア@yahoo.co.jp'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'emailに半角英数字以外が含まれていると登録できないこと' do
        @user.email = 'ｱｱｱ@yahoo.co.jp'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'emailに半角英数字以外が含まれていると登録できないこと' do
        @user.email = '亜嗚呼@yahoo.co.jp'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
    end
  end
end
