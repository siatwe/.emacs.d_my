(defun pathfinder/roll-dice (&optional factor dice boni)
  (or factor (setq factor 1))
  (or dice (setq dice 20))
  (or boni (setq boni 0))
  (setq thrown-dice (+ (random dice) 1))
  (setq result (+ (* thrown-dice factor) boni))
  (setq status "")
  (if (eq dice thrown-dice)
      (setq status "*KRITISCH*")
    (if (eq 1 thrown-dice)
        (setq status "*PATZER*")))
  (princ (format "%dW%d\t+%d\n= %d %s" factor dice boni result status)))

(defun pathfinder/generate-life-checkboxes (max-life)
  (setq min-life -10)
  (setq i max-life)

  (while (>= i -10)
    (princ (format "- [ ] %d/%d\n" i max-life))
    (setq i (1- i))))
