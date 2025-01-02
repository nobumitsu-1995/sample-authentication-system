mkdir -p volumes/postgres
mkdir -p volumes/redis

if [ ! -f .env ]; then
  cp .env.template .env
else
  echo ".envファイルはすでに存在するため作成しませんでした。"
fi

docker-compose build

echo "環境構築が完了しました！"