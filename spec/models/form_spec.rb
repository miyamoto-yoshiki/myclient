require 'rails_helper'

RSpec.describe Form, type: :model do
  describe '#create' do
    before do
      @form = FactoryBot.build(:form)
    end

    context 'フォームの新規登録、編集ができる時' do
      it '文字数が16文字以下であれば登録、編集ができる' do 
        expect(@form).to be_valid
      end
      it '内容が空でも登録、編集ができる' do
        @form.f_name1 = ''
        @form.f_name2 = ''
        @form.f_name3 = ''
        @form.f_name4 = ''
        @form.f_name5 = ''
        @form.f_name6 = ''
        @form.f_name7 = ''
        @form.f_name8 = ''
        @form.f_name9 = ''
        @form.f_name10 = ''
        expect(@form).to be_valid
      end
    end

    context 'フォームの新規登録、編集ができない時' do
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name1 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name1 is too long (maximum is 16 characters)")
      end
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name2 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name2 is too long (maximum is 16 characters)")
      end
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name3 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name3 is too long (maximum is 16 characters)")
      end
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name4 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name4 is too long (maximum is 16 characters)")
      end
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name5 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name5 is too long (maximum is 16 characters)")
      end
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name6 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name6 is too long (maximum is 16 characters)")
      end
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name7 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name7 is too long (maximum is 16 characters)")
      end
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name8 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name8 is too long (maximum is 16 characters)")
      end
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name9 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name9 is too long (maximum is 16 characters)")
      end
      it '文字数が17文字以上であれば登録、編集できないこと' do
        @form.f_name10 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @form.valid?
        expect(@form.errors.full_messages).to include("F name10 is too long (maximum is 16 characters)")
      end
    end
  end
end