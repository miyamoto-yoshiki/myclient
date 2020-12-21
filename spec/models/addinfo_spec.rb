require 'rails_helper'

RSpec.describe Addinfo, type: :model do
  describe '#create' do
    before do
      @addinfo = FactoryBot.build(:addinfo)
    end

    context '追加情報の登録、編集ができる時' do
      it '文字数が24文字以下であれば登録、編集ができる' do 
        expect(@addinfo).to be_valid
      end
      it '内容が空でも登録、編集ができる' do
        @addinfo.add_text1 = ''
        @addinfo.add_text2 = ''
        @addinfo.add_text3 = ''
        @addinfo.add_text4 = ''
        @addinfo.add_text5 = ''
        @addinfo.add_text6 = ''
        @addinfo.add_text7 = ''
        @addinfo.add_text8 = ''
        @addinfo.add_text9 = ''
        @addinfo.add_text10 = ''
        expect(@addinfo).to be_valid
      end
    end
    context '追加情報の登録、編集ができない時' do
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text1 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text1 is too long (maximum is 24 characters)")
      end
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text2 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text2 is too long (maximum is 24 characters)")
      end
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text3 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text3 is too long (maximum is 24 characters)")
      end
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text4 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text4 is too long (maximum is 24 characters)")
      end
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text5 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text5 is too long (maximum is 24 characters)")
      end
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text6 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text6 is too long (maximum is 24 characters)")
      end
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text7 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text7 is too long (maximum is 24 characters)")
      end
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text8='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text8 is too long (maximum is 24 characters)")
      end
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text9 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text9 is too long (maximum is 24 characters)")
      end
      it '文字数が25文字以上であれば登録、編集できないこと' do
        @addinfo.add_text10 ='アイウエオかきくけこサシスセソたちつてとなにぬねの' 
        @addinfo.valid?
        expect(@addinfo.errors.full_messages).to include("Add text10 is too long (maximum is 24 characters)")
      end
    end
  end
end
