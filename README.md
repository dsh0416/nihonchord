# 日本和弦 日本語コード

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

![Keyboard Layout](https://raw.githubusercontent.com/dsh0416/nihonchord/master/misc/layout.png)

其解決了一些非日本語配列鍵盤上日本語的輸入問題，例如：
- 成音拍鼻音 ん 和成音拍阻音（促音）っ 有單獨按鍵。
- 輸入節奏與音節節奏一致，而不會像 Romaji 輸入一樣受音節複雜程度影響。
- 利用有限的修飾鍵快速切換平仮名和片仮名。
- 輸入過程中可以儘可能降低雙手的移動幅度。
- 能夠快速輸入已經廢止的仮名，包括：𛀆㇙エ𛀁ゐヰゑヱ，關於「HIRAGANA LETTER ARCHAIC WU」待 Unicode 更新後加入。
- 沒有侵入數字區域，對於更小型的鍵盤，例如 40% 便攜鍵盤，依然可以友好輸入。

雖然拗音是複合元音，但是日本語是一門音节等时 (syllable-timed) 語言，爲了提升輸入的節奏感，我們爲三個拗音準備了專門的按鍵。

而爲了方便記憶，我們對於右手邊輔音的位置也進行了一定重拍。使得やはからなま正好落在 i h k l n m 上。自上到下分別是

「綾沙た（ち）はわからな（い）み（たい）。」

## 字典

本輸入方案的字典來自於 Mozc 中採用的 IPAdic 與 Okinawa dictionray，其授權如下：

```
-------------------------------------------------------------------------------
IPAdic is licensed as follows:

Copyright 2000, 2001, 2002, 2003 Nara Institute of Science
and Technology.  All Rights Reserved.

Use, reproduction, and distribution of this software is permitted.
Any copy of this software, whether in its original form or modified,
must include both the above copyright notice and the following
paragraphs.

Nara Institute of Science and Technology (NAIST),
the copyright holders, disclaims all warranties with regard to this
software, including all implied warranties of merchantability and
fitness, in no event shall NAIST be liable for
any special, indirect or consequential damages or any damages
whatsoever resulting from loss of use, data or profits, whether in an
action of contract, negligence or other tortuous action, arising out
of or in connection with the use or performance of this software.

A large portion of the dictionary entries
originate from ICOT Free Software.  The following conditions for ICOT
Free Software applies to the current dictionary as well.

Each User may also freely distribute the Program, whether in its
original form or modified, to any third party or parties, PROVIDED
that the provisions of Section 3 ("NO WARRANTY") will ALWAYS appear
on, or be attached to, the Program, which is distributed substantially
in the same form as set out herein and that such intended
distribution, if actually made, will neither violate or otherwise
contravene any of the laws and regulations of the countries having
jurisdiction over the User or the intended distribution itself.

NO WARRANTY

The program was produced on an experimental basis in the course of the
research and development conducted during the project and is provided
to users as so produced on an experimental basis.  Accordingly, the
program is provided without any warranty whatsoever, whether express,
implied, statutory or otherwise.  The term "warranty" used herein
includes, but is not limited to, any warranty of the quality,
performance, merchantability and fitness for a particular purpose of
the program and the nonexistence of any infringement or violation of
any right of any third party.

Each user of the program will agree and understand, and be deemed to
have agreed and understood, that there is no warranty whatsoever for
the program and, accordingly, the entire risk arising from or
otherwise connected with the program is assumed by the user.

Therefore, neither ICOT, the copyright holder, or any other
organization that participated in or was otherwise related to the
development of the program and their respective officials, directors,
officers and other employees shall be held liable for any and all
damages, including, without limitation, general, special, incidental
and consequential damages, arising out of or otherwise in connection
with the use or inability to use the program or any product, material
or result produced or otherwise obtained by using the program,
regardless of whether they have been advised of, or otherwise had
knowledge of, the possibility of such damages at any time during the
project or thereafter.  Each user will be deemed to have agreed to the
foregoing by his or her commencement of use of the program.  The term
"use" as used herein includes, but is not limited to, the use,
modification, copying and distribution of the program and the
production of secondary products from the program.

In the case where the program, whether in its original form or
modified, was distributed or delivered to or received by a user from
any person, organization or entity other than ICOT, unless it makes or
grants independently of ICOT any specific warranty to the user in
writing, such person, organization or entity, will also be exempted
from and not be held liable to the user for any such damages as noted
above as far as the program is concerned.

-------------------------------------------------------------------------------
Okinawa dictionary is licensed as follows

Public Domain Dataです。使用・変更・配布に関しては一切の制限をつけません。
商品などに組み込むことも自由に行なってください。すでにいくつかの辞書には沖縄辞書が採用されています。
勝手ながら、沖縄辞書に寄贈された辞書も in the Public Domain' 扱いとさせていただきます。
```

## 安裝

- 將 `schema/nihonchord.dict.yaml` 拷貝到你的 Rime 設置
- 將 `schema/nihonchord.schema.yaml` 拷貝到你的 Rime 設置
- 將 `- nihonchord` 加入到你 `default.custom.yaml` 的 `schema_list` 中

![Example](https://raw.githubusercontent.com/dsh0416/nihonchord/master/misc/example.gif)