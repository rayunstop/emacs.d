;;;code

(require 'org-caldav)
(setq org-caldav-url "https://www.google.com/calendar/dav")
(setq org-caldav-calendar-id "yzprofiles@gmail.com")
(setq org-caldav-inbox '("~/Google Drive/org/caldav/caldav.org"))
(setq org-caldav-files '("~/Google Drive/org/caldav/caldav.org"))
(setq org-icalendar-date-time-format ";TZID=%Z:%Y%m%dT%H%M%S")

(provide 'org-google-cal)

;;; org-google-cal.el ends here
