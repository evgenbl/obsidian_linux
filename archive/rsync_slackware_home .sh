#!/bin/sh

sudo rsync -aAXvzh /home/jenit --exclude={'/jenit/.cache','/jenit/.local','/jenit/мое_фото','/jenit/мое_видео','/jenit/музыка_видео'} /run/media/jenit/da6b9bec-08ef-4205-ac88-d373c65699bd/slackware_14.2_home/ 
