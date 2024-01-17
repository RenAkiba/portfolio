class UsersController < ApplicationController
    def index
        @record = Record.all
    end

      def show
        @record = Record.find_by(id: params[:id])
        if @record.nil?
            flash[:danger] = "詳細が見つかりませんでした"
            redirect_to users_path
        end
    end



    def new
        @record = Record.new
    end

    def create
        @record = Record.new(record_params)
        if @record.save
            flash[:success] = "追加完了！"
            redirect_to users_path
        else
            flash[:danger] = "失敗..."
            render :new
        end
    end

    def edit
        @record = Record.find_by(id: [params[:id]])
    end

    def update
        @record = Record.find_by(id: [params[:id]])
        if @record.update(record_params)
            flash[:success] = "更新完了！"
            redirect_to action: "index"
        else
            flash[:danger] = "失敗..."
            render :edit
        end
    end

    def destroy
        @record = Record.find_by(id: [params[:id]])
        @record.destroy
        flash[:success] = "削除しました"
        redirect_to users_path #indexは複数の物を表示させるからusersで複数形
    end
    
    
    private

    def record_params
        params.require(:record).permit(:dish, :calorie)
    end
end
