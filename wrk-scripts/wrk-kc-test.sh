#!/bin/bash


echo "Running wrk benchmarks..."

CLIENT_SECRET="60b714aa-345a-4413-aaea-2fd2d00880e9"
CLIENT_ID="keycloak-client-id"
USERNAME="arya"
PASSWORD="aryakamandanu123"
SCHEME="http"
KEYCLOAK_TOKEN_URL="localhost:8080/auth/realms/springboot/protocol/openid-connect/token"
KEYCLOAK_ENTITLEMENT_URL="http://localhost:8081/acl-api/generator/acl"

#echo "Getting access token.."

#echo "client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&username=$USERNAME&password=$PASSWORD&grant_type=password"
#TOKENS=$(curl -H "Content-Type:application/x-www-form-urlencoded" -XPOST $SCHEME://$KEYCLOAK_TOKEN_URL --data "client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&username=$USERNAME&password=$PASSWORD&grant_type=password")
#echo "Tokens: $TOKENS"
#ACCESS_TOKEN=$(echo $TOKENS | jq .access_token | tr -d '"')
#ACCESS_TOKEN="eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5a2I3cDBLVFNEdXIzVHpfaHRFZU9PMGEzZlZRbEY4QXItdGtTOVpZWU1VIn0.eyJqdGkiOiI1MWVmMDM1Mi1mZTE1LTRlODItOWEwMS0zYmM1NGIzMWI5YzciLCJleHAiOjE1MjMxNzczNTMsIm5iZiI6MCwiaWF0IjoxNTIzMTc3MDUzLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwODAvYXV0aC9yZWFsbXMvc3ByaW5nYm9vdCIsImF1ZCI6ImtleWNsb2FrLWNsaWVudC1pZCIsInN1YiI6IjA1MzFiN2NiLTAyMjMtNGE4My1hYTY0LTJhMTQ1Zjg1NGQyYyIsInR5cCI6IkJlYXJlciIsImF6cCI6ImtleWNsb2FrLWNsaWVudC1pZCIsImF1dGhfdGltZSI6MCwic2Vzc2lvbl9zdGF0ZSI6IjllODQ5OTM3LTQ3OTktNGY2YS1hYzZmLTgwZGRlZTA2ZWFkNiIsImFjciI6IjEiLCJhbGxvd2VkLW9yaWdpbnMiOltdLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsic3VwZXJhZG1pbiIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwibmFtZSI6ImFyeWEga2FtYW5kYW51IiwicHJlZmVycmVkX3VzZXJuYW1lIjoiYXJ5YSIsImdpdmVuX25hbWUiOiJhcnlhIiwiZmFtaWx5X25hbWUiOiJrYW1hbmRhbnUiLCJlbWFpbCI6ImFyeWFrYW1hbmRhbnVAZ21haWwuY29tIn0.nUauHPlC7tnaauAtHK74LURreimjy2eyUyzz2UGGEuhjrBKH3yY_H0QxeWHgHd1w_GEhj_On-LCjXZZcd8o1Kkhtn5sXncO1ExnVEiFF0VvWs1-ys4TYEH2yAv3RuC3bZ9SGttCQcEY-cG5Qnce4C_N5DgdKSt5gBd_Wf0AgH9P6SC8L4hpumREi4flCeEt20zNetQyLF3g_vBP0sB7mtN_UqAdZuhcOyin44d0mgVGdqLIrfZg8Ou1QcPNbyu0fZyq8a9lFc0KXuX5OQKw7chCikzWL5vIyF37br6SzbKWWykaKgpz-3J7PCHPKUwuv5u77VHNKxMkq-ntt07hVVA"

## entitlement
#echo "Running performance test against the entitlement endpoint..."
#DURATION=1s
#CONNECTIONS=23
#THREADS=23
#wrk -t$THREADS -c$CONNECTIONS -d$DURATION $KEYCLOAK_ENTITLEMENT_URL -H "Authorization: Bearer $ACCESS_TOKEN" -s script_kc_authorization.lua


## Access token
#echo "Running performance test against access token endpoint..."
#DURATION=1s
#CONNECTIONS=515
#THREADS=515
#wrk -t$THREADS -c$CONNECTIONS -d$DURATION $SCHEME://$KEYCLOAK_TOKEN_URL -s script_kc_access_token.lua


echo "Benchmark is completed!"
