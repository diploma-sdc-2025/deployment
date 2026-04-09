-- Runs once on first container start. Database names must match your .env:
-- AUTH_DB_NAME=auth, MATCHMAKING_DB_NAME=matchmaking, GAME_DB_NAME=game,
-- BATTLE_DB_NAME=battle, ANALYTICS_DB_NAME=analytics

CREATE DATABASE auth;
CREATE DATABASE matchmaking;
CREATE DATABASE game;
CREATE DATABASE battle;
CREATE DATABASE analytics;
