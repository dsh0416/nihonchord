# 日本和弦 日本コード

配方：℞ nihonchord

[Rime](https://rime.im/) 日本和弦輸入方案

## 簡介

日本和弦 是一款爲 ANSI、ISO、60%、40% 鍵盤設計的多鍵並擊輸入日本語的方法，

本方案受啓發自 [佛振](https://github.com/lotem) 的 [宮保拼音](https://github.com/rime/home/wiki/ComboPinyin)。

並擊 (chord-typing) 是指：數指同時按下鍵盤上的多個按鍵。

## 特色

本輸入方案的特色是左手輸入元音和修飾符號，右手輸入對應的輔音，左右手同時敲擊。

我個人花了很長一段時間來讓自己從拼音切換到了雙拼。其最大的改善就是更符合音韻上的直覺，以及打字的節奏變得更好了。但日語かな輸入又要專門的大鍵盤，用了之後英語打字效率反而會受到很大影響；而 Romaji 的輸入節奏感和速度很糟糕，有種從雙拼又退化回來的感覺，看了速錄鍵盤和宮保拼音後，想試試看設計一個新方案出來。

輸入的感受如同左手彈奏根音，右手搭配上優美的旋律。

![Example](https://raw.githubusercontent.com/dsh0416/nihonchord/master/misc/example.gif)

其解決了一些非日本語配列鍵盤上日本語的輸入問題，例如：
- 成音拍鼻音 ん 和成音拍阻音（促音）っ 有單獨按鍵。
- 輸入節奏與音節節奏一致，而不會像 Romaji 輸入一樣受音節複雜程度影響。
- 輸入過程中可以儘可能降低雙手的移動幅度。
- 能夠快速輸入已經廢止的仮名，包括：𛀆㇙𛀀𛀁ゐヰゑヱ𛄟
- 沒有侵入數字區域，對於更小型的鍵盤，例如 40% 便攜鍵盤，依然可以友好輸入。

雖然拗音是複合元音，但是日本語是一門音节等时 (syllable-timed) 語言，爲了提升輸入的節奏感，我們爲三個拗音準備了專門的按鍵。

而爲了方便記憶，我們對於左右的元音，按從上到下從左到右排列了 a i u e o，這使得三個拗音 ya yu yo 正好排列在 a u o 的上方。

右手邊輔音的位置也進行了一定重排。使得わやはからなま正好落在 u i h k l n m 上；而零聲母，正好落在標準指法下食指 J 的位置，可以無需思考自然打出，不需要特別記憶。唯一需要記憶的是 さた 兩行，記憶的方法是單字「STOP」，O 和 P 兩個按鍵分別對應 さ行 和 た行。

## 字典

本輸入方案的字典來自於 Mozc 中採用的 IPAdic 與 Okinawa dictionray，其授權請查看 `data/LICENSE`。

## 用法

- 將 `schema/nihonchord.dict.yaml` 拷貝到你的 Rime 設置
- 將 `schema/nihonchord.schema.yaml` 拷貝到你的 Rime 設置
- 將 `- nihonchord` 加入到你 `default.custom.yaml` 的 `schema_list` 中

**請確保使用 繁體 模式，繁體模式下詞典已經使用了日本漢字，簡體模式會被 opencc 錯誤轉換。**

[![Keyboard Layout](https://raw.githubusercontent.com/dsh0416/nihonchord/master/misc/layout.png)](http://www.keyboard-layout-editor.com/#/gists/faaa6a6907bb2595c252be5d22d258c5)
