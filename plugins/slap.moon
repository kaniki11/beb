
slaps = {
  '$victim أطلق عليه الرصاص $victor.',
  '$victim تم خداعه حتى الموت',
  '$victim مشى في صبار بينما كان يحاول الفرار $victor.',
  '$victim غرق',
  '$victim غرق بينما كان يحاول الفرار $victor.',
  '$victim انفجر',
  '$victim تم تفجيره $victor.',
  '$victim تم ضرب راسه في الارض',
  '$victim سقط من مكان عالي',
  '$victim سقط السلم',
  '$victim سقط في رقعة من الصبار',
  '$victim محكوم عليه أن يسقط من قبل $victor.',
  '$victim كان في مهب من مكان عال من قبل $victor.',
  '$victim كان يغتصب فتاة ساقط',
  '$victim في النيران',
  '$victim احترق حتى الموت',
  '$victim أحرقت إلى فحم أثناء القتال $victor.',
  '$victim مشى في النار أثناء القتال $victor.',
  '$victim حاول السباحة في الحمم البركانية',
  '$victim حاول السباحة في الحمم بينما كان يحاول الفرار $victor.',
  '$victim ضرب من البرق',
  '$victim قتل',
  '$victim حصلت على الانتهاء من قبل $victor.',
  '$victim قتل من قبل السحر',
  '$victim تم قتله من $victor باستخدام السحر',
  '$victim جوعا حتى الموت',
  '$victim اختنق في جدار',
  '$victim سقطت من العالم',
  '$victim تم طرد الفراغ من قبل $victor.',
  '$victim ذبلت بعيدا',
  '$victim كان منتهيا من قبل $victor.',
  '$victim تم الإبلاغ عنه بواسطة $victor.',
  '$victim كان غير متزامن',
  '$victim كان يضيع',
  '$victim تم القبض عليه',
  '$victim\'يتم كشط العظام نظيفة من الرياح ريكولات',
  '$victim مات من الزحار',
  '$victim اغمي عليه',
  '$victim هو من البوكيمون صالحة للاستعمال $victim مطلوب بل خارج',
  '$victim هو من البوكيمون صالحة للاستعمال $victim ظلام دامس',
  '$victim مطلوب بل خارج',
  '$victim ضلام دامس',
  '$victim يقول وداعا لهذا العالم القاسي',
  '$victim حصلت عليه',
  '$victim في النصف $victor.',
  '$victim مات. أنا ألوم $victor.',
  '$victim كان الفأس - قتل $victor.',
  '$victim\'تم تقسيم البطيخ $victor.',
  '$victim تم قطع و مكعبات من قبل $victor.',
  '$victim تم تقسيمها من المنشعب إلى القص من قبل $victor.',
  '$victim\'الموت وضع درجة أخرى في $victor\'محور',
  '$victim توفي مستحيل!',
  '$victim مات من $victor\'مرض استوائي غامض',
  '$victim هرب العدو عن طريق الموت',
  '$victim لعب البطاطا الساخنة مع قنبلة يدوية',
  '$victim من قبل $victor',
  '$victim سقط على سيفه',
  '$victim أكلت قنبلة يدوية',
  '$victim تمارس $victor\'الطين الحمام',
  '$victim هو ما لتناول العشاء!',
  '$victim تم إنهاؤها بواسطة $victor.',
  '$victim أطلق عليه الرصاص قبل أن يلقى من الطائرة',
  '$victim فإن الضحية لا تقهر',
  '$victim واجه خطأ',
  '$victim توفي ونسخ مجددا كماعز',
  '$victor يرمي $victim قبالة مبنى',
  '$victim هو النوم مع الأسماك',
  '$victim حصلت على دفن سابق لأوانه',
  '$victor استبدال كل من $victim\'الموسيقى مع نيكلباك',
  '$victor المتطفلة $victim\'البريد الإلكتروني',
  '$victor مصنوع $victim شطيرة المفصل',
  '$victor صفع $victim مع شيء خالص',
  '$victor نجاح $victim مع سفينة الفضاء الصغيرة بين النجوم',
  '$victim كان سريعا $victor.',
  '$victor ضع $victim في الاختيار',
  '$victor GTS شفر $victim وحذف المفتاح الخاص',
  '$victor ضع $victim في فريندزون',
  '$victor الصفعات $victim مع طلب إزالة دمكا!',
  '$victim أصبح بطانية الجثة ل $victor.',
  'الموت هو عندما تحصل على الوحوش لك. الموت يأتي ل $victim.',
  'يموت البقر عدة مرات قبل وفاته $victim لم ذاقت الموت ولكن مرة واحدة'
}

run = (msg,matches) ->
  victim = ""
  if matches[1] == "tk" and not msg.reply_to_message
    print
  if matches[2]
    victim = matches[2]
  if msg.reply_to_message
    victim = msg.reply_to_message.from.first_name
  victor = msg.from.first_name
  unless victim
    victim = victor
    victor = bot.first_name
  message = slaps[math.random(#slaps)]
  message = message\gsub '$victim', "*#{victim}*"
  message = message\gsub '$victor', "*#{victor}*"
  return message

return {
  description: "*Give someone a good slap (or worse)*"
  usage: "`/tk` - by reply
`/tk [name]`\n"
  patterns: {
  "^[!/](tk)$",
  "^[!/]tk +(.+)$"
  }
  :run
}
