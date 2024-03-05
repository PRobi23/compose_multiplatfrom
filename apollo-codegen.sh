apollo schema:download --endpoint=https://client-api.tvoli.com/api/apiql/v2 ./composeApp/src/commonMain/graphql/schema.json --header "Magine-AccessToken: c80074ab-2f03-4a41-9c9d-cae5b232694d"
cd ./composeApp/src/commonMain/graphql
apollo codegen:generate --passthroughCustomScalars Generated/API.swift --target swift
apollo codegen:generate --passthroughCustomScalars --output=Generated --target android

