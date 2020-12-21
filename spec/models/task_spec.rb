require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#create' do
    before do
      @task = FactoryBot.build(:task)
    end

    context 'タスクの登録ができる時' do
      it 'タスク内容, 日付, 顧客ID, リダイレクト番号があれば登録できる' do 
        expect(@task).to be_valid
      end
    end

    context 'タスクの登録ができない時' do
      it 'タスク内容が空だと登録できないこと' do
        @task.task = nil
        @task.valid?
        expect(@task.errors.full_messages).to include("Task can't be blank")
      end
      it '日付が空だと登録できないこと' do
        @task.date = nil
        @task.valid?
        expect(@task.errors.full_messages).to include("Date can't be blank")
      end
      it '顧客IDが空だと登録できないこと' do
        @task.client_id = nil
        @task.valid?
        expect(@task.errors.full_messages).to include()
      end
      it 'リダイレクト番号が空だと登録できないこと' do
        @task.redirect = nil
        @task.valid?
        expect(@task.errors.full_messages).to include()
      end
    end
  end
end
