.class public Lcom/intermedia/HowToPlayActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HowToPlayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HowToPlayActivity"


# instance fields
.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public faq(Landroid/view/View;)V
    .locals 1

    const-string p1, "HowToPlayActivity"

    const-string v0, "faq(): start"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "HowToPlayActivity"

    const v0, 0x7f1100c1

    .line 121
    invoke-virtual {p0, v0}, Lcom/intermedia/HowToPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startHowToPlayActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public getHelp(Landroid/view/View;)V
    .locals 1

    const-string p1, "HowToPlayActivity"

    const-string v0, "getHelp(): start"

    .line 130
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "HowToPlayActivity"

    const v0, 0x7f110111

    .line 131
    invoke-virtual {p0, v0}, Lcom/intermedia/HowToPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startHowToPlayActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public howToPlay(Landroid/view/View;)V
    .locals 1

    const-string p1, "HowToPlayActivity"

    const-string v0, "hotToPlay(): start"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "HowToPlayActivity"

    const v0, 0x7f11011c

    .line 116
    invoke-virtual {p0, v0}, Lcom/intermedia/HowToPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startHowToPlayActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/intermedia/service/MetricsUtils;->onHowToPlayMetric()V

    .line 34
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/HowToPlayActivity;->type:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lcom/intermedia/HowToPlayActivity;->type:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Get help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "Submit trivia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "About"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "FAQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "How To Play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const v0, 0x7f0c0020

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 54
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/intermedia/HowToPlayActivity;->setContentView(I)V

    goto :goto_2

    .line 50
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/intermedia/HowToPlayActivity;->setContentView(I)V

    goto :goto_2

    .line 46
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/intermedia/HowToPlayActivity;->setContentView(I)V

    goto :goto_2

    .line 42
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/intermedia/HowToPlayActivity;->setContentView(I)V

    goto :goto_2

    :pswitch_4
    const p1, 0x7f0c001a

    .line 38
    invoke-virtual {p0, p1}, Lcom/intermedia/HowToPlayActivity;->setContentView(I)V

    :goto_2
    const p1, 0x7f0a01d1

    .line 59
    invoke-virtual {p0, p1}, Lcom/intermedia/HowToPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 60
    invoke-virtual {p0, p1}, Lcom/intermedia/HowToPlayActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 61
    iget-object p1, p0, Lcom/intermedia/HowToPlayActivity;->type:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/intermedia/HowToPlayActivity;->setActionBar(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x31022a37 -> :sswitch_4
        0x10ef6 -> :sswitch_3
        0x3c2336d -> :sswitch_2
        0x26c8af6b -> :sswitch_1
        0x762eb9eb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public rateUs(Landroid/view/View;)V
    .locals 1

    const-string p1, "HowToPlayActivity"

    const-string v0, "rateUs(): start"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setActionBar(Ljava/lang/String;)V
    .locals 6

    .line 66
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/intermedia/HowToPlayActivity;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Get help"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "Submit trivia"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "About"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "FAQ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "Leaderboard"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v4, "How To Play"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const v3, 0x7f0600bd

    const v4, 0x7f060080

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 81
    :pswitch_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\"white\">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 75
    :pswitch_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\"black\">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    :goto_2
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 91
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, -0x80000000

    .line 93
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x4000000

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 95
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 100
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x31022a37 -> :sswitch_5
        -0x246f0a3 -> :sswitch_4
        0x10ef6 -> :sswitch_3
        0x3c2336d -> :sswitch_2
        0x26c8af6b -> :sswitch_1
        0x762eb9eb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStatusBarColor(Landroid/view/View;I)V
    .locals 1

    .line 107
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v0, 0x4000000

    .line 109
    invoke-virtual {p2, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 110
    invoke-virtual {p0}, Lcom/intermedia/HowToPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600bd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public submitTrivia(Landroid/view/View;)V
    .locals 1

    const-string p1, "HowToPlayActivity"

    const-string v0, "submitTrivia(): start"

    .line 125
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "HowToPlayActivity"

    const v0, 0x7f110183

    .line 126
    invoke-virtual {p0, v0}, Lcom/intermedia/HowToPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startHowToPlayActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
