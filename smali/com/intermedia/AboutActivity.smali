.class public Lcom/intermedia/AboutActivity;
.super Lcom/intermedia/injection/BaseInjectedActivity;
.source "AboutActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AboutActivity"


# instance fields
.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field heartNoLivesColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06007d
    .end annotation
.end field

.field hqRedColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060089
    .end annotation
.end field

.field private sessionManager:Lcom/intermedia/user/session/SessionManager;

.field private spinner:Landroid/widget/Spinner;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/intermedia/injection/BaseInjectedActivity;-><init>()V

    .line 53
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/intermedia/AboutActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/AboutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/intermedia/AboutActivity;->spinner:Landroid/widget/Spinner;

    return-object p0
.end method


# virtual methods
.method public cleanString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public extractEditText(I)Ljava/lang/String;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lcom/intermedia/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 232
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p0, p1}, Lcom/intermedia/AboutActivity;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public extractSpinnerText(I)Ljava/lang/String;
    .locals 0

    const p1, 0x7f0a01a7

    .line 238
    invoke-virtual {p0, p1}, Lcom/intermedia/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 239
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 244
    :goto_0
    invoke-virtual {p0, p1}, Lcom/intermedia/AboutActivity;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public faq(Landroid/view/View;)V
    .locals 1

    const-string p1, "AboutActivity"

    const-string v0, "faq(): start"

    .line 292
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AboutActivity"

    const v0, 0x7f1100c0

    .line 293
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public getHelp(Landroid/view/View;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/intermedia/AboutActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {p1}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/intermedia/util/reporting/EmailBugReporter;->startInquiry(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public howToPlay(Landroid/view/View;)V
    .locals 1

    const-string p1, "AboutActivity"

    const-string v0, "hotToPlay(): start"

    .line 287
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AboutActivity"

    const v0, 0x7f11011c

    .line 288
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method protected inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .locals 0
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 168
    invoke-interface {p1, p0}, Lcom/intermedia/injection/BaseActivityComponent;->inject(Lcom/intermedia/AboutActivity;)V

    return-void
.end method

.method public invite(Landroid/view/View;)V
    .locals 2

    .line 182
    iget-object p1, p0, Lcom/intermedia/AboutActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/AboutActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v0}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/AboutActivity$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/intermedia/AboutActivity$$Lambda$1;-><init>(Lcom/intermedia/AboutActivity;)V

    .line 183
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 182
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method final synthetic lambda$invite$1$AboutActivity(Lcom/intermedia/model/HQUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/intermedia/util/UIUtils;->invite(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$onCreate$0$AboutActivity(Lcom/intermedia/model/HQUser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x7f0a00fe

    .line 93
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->lives()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00cd

    .line 96
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    sget-wide v1, Lcom/intermedia/util/AnimationUtils;->BG_ROTATION_DURATION:J

    invoke-static {v1, v2}, Lcom/intermedia/util/AnimationUtils;->centeredRotationAnim(J)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0a00ce

    .line 99
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->lives()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget v1, p0, Lcom/intermedia/AboutActivity;->hqRedColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/intermedia/AboutActivity;->heartNoLivesColor:I

    .line 100
    :goto_0
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f0a0155

    .line 103
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 66
    invoke-virtual {p0}, Lcom/intermedia/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "About"

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/intermedia/AboutActivity;->type:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/intermedia/AboutActivity;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/intermedia/service/MetricsUtils;->onAboutActivityMetric(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/intermedia/user/session/SessionManager;->getInstance()Lcom/intermedia/user/session/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/AboutActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    const-string v0, "AboutActivity"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intermedia/AboutActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/intermedia/AboutActivity;->type:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "How to play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "Extra lives"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "Privacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "Submit trivia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "Terms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "Rules"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "Submit Trivia Results"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "About"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_8
    const-string v2, "FAQs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    :goto_0
    const v0, 0x7f0c007f

    packed-switch v1, :pswitch_data_0

    const-string v0, "AboutActivity"

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intermedia/AboutActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intermedia/service/MetricsUtils;->logCrashlytics(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 140
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->setContentView(I)V

    .line 141
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "about_faq"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    const v0, 0x7f0a01ee

    .line 143
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 144
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 145
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 146
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 147
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 148
    invoke-virtual {p0}, Lcom/intermedia/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 135
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->setContentView(I)V

    const-string v0, "AboutActivity"

    .line 136
    invoke-virtual {p0}, Lcom/intermedia/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/intermedia/util/UIUtils;->setupWebView(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 130
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->setContentView(I)V

    const-string v0, "AboutActivity"

    .line 131
    invoke-virtual {p0}, Lcom/intermedia/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/intermedia/util/UIUtils;->setupWebView(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 125
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->setContentView(I)V

    const-string v0, "AboutActivity"

    .line 126
    invoke-virtual {p0}, Lcom/intermedia/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/intermedia/util/UIUtils;->setupWebView(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_1

    :pswitch_4
    const v0, 0x7f0c0029

    .line 121
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->setContentView(I)V

    goto/16 :goto_1

    :pswitch_5
    const v0, 0x7f0c0028

    .line 109
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->setContentView(I)V

    .line 110
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "about_submitTrivia"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    const v0, 0x7f0a01a7

    .line 112
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/intermedia/AboutActivity;->spinner:Landroid/widget/Spinner;

    const/high16 v0, 0x7f030000

    const v1, 0x1090008

    .line 114
    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v1, 0x1090009

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 117
    iget-object v1, p0, Lcom/intermedia/AboutActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_1

    :pswitch_6
    const v0, 0x7f0c001f

    .line 91
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->setContentView(I)V

    .line 92
    iget-object v0, p0, Lcom/intermedia/AboutActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/intermedia/AboutActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v1}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/AboutActivity$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/intermedia/AboutActivity$$Lambda$0;-><init>(Lcom/intermedia/AboutActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    :pswitch_7
    const v0, 0x7f0c0020

    .line 86
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->setContentView(I)V

    .line 87
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "about_howToPlay"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    const v0, 0x7f0c001a

    .line 79
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->setContentView(I)V

    const v0, 0x7f0a0006

    .line 80
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "1.7.0"

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "about_opened"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 157
    :goto_1
    invoke-virtual {p0, p1}, Lcom/intermedia/AboutActivity;->setActionBar(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x20d03d -> :sswitch_8
        0x3c2336d -> :sswitch_7
        0x4545041 -> :sswitch_6
        0x4ba58d7 -> :sswitch_5
        0x4cf5967 -> :sswitch_4
        0x26c8af6b -> :sswitch_3
        0x5079bb68 -> :sswitch_2
        0x5d5470d7 -> :sswitch_1
        0x6bd3c9c9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/intermedia/AboutActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/intermedia/injection/BaseInjectedActivity;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/intermedia/AboutActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public privacy(Landroid/view/View;)V
    .locals 1

    const-string p1, "AboutActivity"

    const-string v0, "privacy(): start"

    .line 311
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AboutActivity"

    const v0, 0x7f110164

    .line 312
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public rateUs(Landroid/view/View;)V
    .locals 0

    .line 321
    iget-object p1, p0, Lcom/intermedia/AboutActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {p1}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/intermedia/about/RateUsFlow;->start(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public rules(Landroid/view/View;)V
    .locals 1

    const-string p1, "AboutActivity"

    const-string v0, "rules(): start"

    .line 316
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AboutActivity"

    const v0, 0x7f110170

    .line 317
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public setActionBar(Ljava/lang/String;)V
    .locals 4

    .line 187
    invoke-virtual {p0}, Lcom/intermedia/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 189
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 193
    iget-object v2, p0, Lcom/intermedia/AboutActivity;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "Get help"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "How to play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v1, "Extra lives"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_3
    const-string v1, "Privacy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "Submit trivia"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "Terms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "Rules"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "Submit Trivia Results"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_8
    const-string v1, "About"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_9
    const-string v1, "FAQs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string p1, "AboutActivity"

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for action bar settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intermedia/AboutActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/intermedia/service/MetricsUtils;->logCrashlytics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    const-string v1, "Submit Trivia Results"

    .line 205
    iget-object v2, p0, Lcom/intermedia/AboutActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f110183

    .line 206
    invoke-virtual {p0, p1}, Lcom/intermedia/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/intermedia/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\"black\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    :goto_2
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x20d03d -> :sswitch_9
        0x3c2336d -> :sswitch_8
        0x4545041 -> :sswitch_7
        0x4ba58d7 -> :sswitch_6
        0x4cf5967 -> :sswitch_5
        0x26c8af6b -> :sswitch_4
        0x5079bb68 -> :sswitch_3
        0x5d5470d7 -> :sswitch_2
        0x6bd3c9c9 -> :sswitch_1
        0x762eb9eb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public submitFacebook(Landroid/view/View;)V
    .locals 2

    const-string v0, "AboutActivity"

    const-string v1, "submitFacebook(): start"

    .line 325
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "about_facebook"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 327
    invoke-static {p0}, Lcom/intermedia/util/UIUtils;->newFacebookIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AboutActivity"

    .line 328
    invoke-static {v1, v0, p1, p0}, Lcom/intermedia/util/UIUtils;->submitIntent(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method

.method public submitInstagram(Landroid/view/View;)V
    .locals 2

    const-string v0, "AboutActivity"

    const-string v1, "submitInstagram(): start"

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "about_instagram"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 341
    invoke-static {p0}, Lcom/intermedia/util/UIUtils;->newInstragramIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AboutActivity"

    .line 342
    invoke-static {v1, v0, p1, p0}, Lcom/intermedia/util/UIUtils;->submitIntent(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method

.method public submitTrivia(Landroid/view/View;)V
    .locals 1

    const-string p1, "AboutActivity"

    const-string v0, "submitTrivia(): start"

    .line 297
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AboutActivity"

    const v0, 0x7f110183

    .line 298
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public submitTriviaResults(Landroid/view/View;)V
    .locals 4

    const-string p1, "AboutActivity"

    const-string v0, "submitTriviaResults(): start"

    .line 248
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance p1, Lcom/intermedia/model/Trivia;

    invoke-direct {p1}, Lcom/intermedia/model/Trivia;-><init>()V

    const v0, 0x7f0a014b

    .line 252
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->extractEditText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intermedia/model/Trivia;->setQuestion(Ljava/lang/String;)V

    const v0, 0x7f0a0025

    .line 253
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->extractEditText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intermedia/model/Trivia;->setAnswer(Ljava/lang/String;)V

    const v0, 0x7f0a012c

    .line 254
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->extractEditText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intermedia/model/Trivia;->setOptionB(Ljava/lang/String;)V

    const v0, 0x7f0a012d

    .line 255
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->extractEditText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intermedia/model/Trivia;->setOptionC(Ljava/lang/String;)V

    const v0, 0x7f0a01a7

    .line 256
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->extractSpinnerText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intermedia/model/Trivia;->setCategory(Ljava/lang/String;)V

    const-string v0, "AboutActivity"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitTriviaResults(): data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f110185

    .line 261
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110184

    .line 262
    invoke-virtual {p0, v1}, Lcom/intermedia/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    :try_start_0
    invoke-static {p0}, Lcom/intermedia/service/ApiUtils;->getInstance(Landroid/content/Context;)Lcom/intermedia/service/ApiUtils;

    move-result-object v2

    new-instance v3, Lcom/intermedia/AboutActivity$1;

    invoke-direct {v3, p0, v0, p0, v1}, Lcom/intermedia/AboutActivity$1;-><init>(Lcom/intermedia/AboutActivity;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/intermedia/service/ApiUtils;->submitTrivia(Lcom/intermedia/model/Trivia;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AboutActivity"

    .line 279
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/intermedia/service/MetricsUtils;->logCrashlytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/intermedia/AboutActivity;->spinner:Landroid/widget/Spinner;

    invoke-static {v1, p1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public submitTwitter(Landroid/view/View;)V
    .locals 2

    const-string v0, "AboutActivity"

    const-string v1, "submitTwitter(): start"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "about_twitter"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 334
    invoke-static {p0}, Lcom/intermedia/util/UIUtils;->newTwitterIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AboutActivity"

    .line 335
    invoke-static {v1, v0, p1, p0}, Lcom/intermedia/util/UIUtils;->submitIntent(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method

.method public terms(Landroid/view/View;)V
    .locals 1

    const-string p1, "AboutActivity"

    const-string v0, "terms(): start"

    .line 306
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AboutActivity"

    const v0, 0x7f110189

    .line 307
    invoke-virtual {p0, v0}, Lcom/intermedia/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
