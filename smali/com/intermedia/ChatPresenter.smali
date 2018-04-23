.class public Lcom/intermedia/ChatPresenter;
.super Ljava/lang/Object;
.source "ChatPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/ChatPresenter$ChatPagerAdapter;
    }
.end annotation


# static fields
.field private static final PAGE_CHAT_LIST:I = 0x1


# instance fields
.field private addedMessageCount:I

.field private canSend:Z

.field private chatAdapter:Lcom/intermedia/chat/ChatAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private chatWasScrolled:Z

.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private itemAddedCallback:Lcom/intermedia/function/NoArgCallback;

.field private lastClickTime:J

.field private lastMessage:Ljava/lang/String;

.field private final mainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private messageCounter:I

.field private final socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final spamResponse:Lcom/intermedia/model/SpamChatMessage;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final userRepository:Lcom/intermedia/user/UserRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private viewHost:Lcom/intermedia/ChatViewHost;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final viewerSession:Lcom/intermedia/av/media/HPViewerSession;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/intermedia/ChatViewHost;Lcom/intermedia/av/media/HPViewerSession;Lcom/intermedia/user/UserRepository;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/ChatViewHost;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/av/media/HPViewerSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/intermedia/user/UserRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/intermedia/model/SpamChatMessage;

    invoke-direct {v0}, Lcom/intermedia/model/SpamChatMessage;-><init>()V

    iput-object v0, p0, Lcom/intermedia/ChatPresenter;->spamResponse:Lcom/intermedia/model/SpamChatMessage;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/intermedia/ChatPresenter;->addedMessageCount:I

    .line 55
    new-instance v1, Lcom/intermedia/ChatPresenter$1;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$1;-><init>(Lcom/intermedia/ChatPresenter;)V

    iput-object v1, p0, Lcom/intermedia/ChatPresenter;->itemAddedCallback:Lcom/intermedia/function/NoArgCallback;

    .line 64
    new-instance v1, Lcom/intermedia/ChatPresenter$2;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$2;-><init>(Lcom/intermedia/ChatPresenter;)V

    iput-object v1, p0, Lcom/intermedia/ChatPresenter;->socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;

    .line 214
    iput v0, p0, Lcom/intermedia/ChatPresenter;->messageCounter:I

    const-wide/16 v0, 0x0

    .line 215
    iput-wide v0, p0, Lcom/intermedia/ChatPresenter;->lastClickTime:J

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/intermedia/ChatPresenter;->canSend:Z

    const-string v0, ""

    .line 217
    iput-object v0, p0, Lcom/intermedia/ChatPresenter;->lastMessage:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/intermedia/ChatPresenter;->context:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    .line 95
    iput-object p4, p0, Lcom/intermedia/ChatPresenter;->userRepository:Lcom/intermedia/user/UserRepository;

    .line 96
    new-instance p1, Lcom/intermedia/chat/ChatAdapter;

    invoke-direct {p1}, Lcom/intermedia/chat/ChatAdapter;-><init>()V

    iput-object p1, p0, Lcom/intermedia/ChatPresenter;->chatAdapter:Lcom/intermedia/chat/ChatAdapter;

    .line 97
    iput-object p3, p0, Lcom/intermedia/ChatPresenter;->viewerSession:Lcom/intermedia/av/media/HPViewerSession;

    .line 98
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/intermedia/ChatPresenter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/ChatPresenter;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/intermedia/ChatPresenter;->chatWasScrolled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/intermedia/ChatPresenter;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/intermedia/ChatPresenter;->chatWasScrolled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/chat/ChatAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/intermedia/ChatPresenter;->chatAdapter:Lcom/intermedia/chat/ChatAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/ChatViewHost;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/av/media/HPViewerSession;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/intermedia/ChatPresenter;->viewerSession:Lcom/intermedia/av/media/HPViewerSession;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intermedia/ChatPresenter;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/intermedia/ChatPresenter;->canSend:Z

    return p0
.end method

.method static synthetic access$500(Lcom/intermedia/ChatPresenter;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/intermedia/ChatPresenter;->addedMessageCount:I

    return p0
.end method

.method static synthetic access$502(Lcom/intermedia/ChatPresenter;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/intermedia/ChatPresenter;->addedMessageCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/intermedia/ChatPresenter;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/intermedia/ChatPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/intermedia/ChatPresenter;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/intermedia/ChatPresenter;->resetChatCountButton()V

    return-void
.end method

.method private addChatMessage(Lcom/intermedia/model/ChatMessage;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/ChatMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 205
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->chatAdapter:Lcom/intermedia/chat/ChatAdapter;

    invoke-virtual {v0, p1}, Lcom/intermedia/chat/ChatAdapter;->addMessage(Lcom/intermedia/model/ChatMessage;)V

    .line 206
    iget-object p1, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object p1, p1, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/intermedia/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private finishChatting()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatFab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/intermedia/ChatPresenter$$Lambda$7;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$$Lambda$7;-><init>(Lcom/intermedia/ChatPresenter;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/FloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0}, Lcom/intermedia/ChatPresenter;->showChatInput(Z)V

    .line 231
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v1, v1, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private penaltyMessage()V
    .locals 5

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/intermedia/ChatPresenter;->canSend:Z

    .line 221
    iput v0, p0, Lcom/intermedia/ChatPresenter;->messageCounter:I

    .line 222
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/intermedia/ChatPresenter$$Lambda$6;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$$Lambda$6;-><init>(Lcom/intermedia/ChatPresenter;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    .line 225
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 222
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetChatCountButton()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatCountButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/intermedia/ChatPresenter;->addedMessageCount:I

    return-void
.end method

.method private sendChatMessage(Lcom/intermedia/model/HQUser;)V
    .locals 7
    .param p1    # Lcom/intermedia/model/HQUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 179
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    invoke-virtual {v0}, Lcom/intermedia/view/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    iget-boolean v0, p0, Lcom/intermedia/ChatPresenter;->canSend:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->lastMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->spamResponse:Lcom/intermedia/model/SpamChatMessage;

    invoke-direct {p0, v0}, Lcom/intermedia/ChatPresenter;->addChatMessage(Lcom/intermedia/model/ChatMessage;)V

    .line 182
    invoke-direct {p0}, Lcom/intermedia/ChatPresenter;->penaltyMessage()V

    .line 185
    :cond_0
    iget v0, p0, Lcom/intermedia/ChatPresenter;->messageCounter:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/intermedia/ChatPresenter;->lastClickTime:J

    sub-long/2addr v0, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->spamResponse:Lcom/intermedia/model/SpamChatMessage;

    invoke-direct {p0, v0}, Lcom/intermedia/ChatPresenter;->addChatMessage(Lcom/intermedia/model/ChatMessage;)V

    .line 188
    invoke-direct {p0}, Lcom/intermedia/ChatPresenter;->penaltyMessage()V

    .line 191
    :cond_1
    iget-boolean v0, p0, Lcom/intermedia/ChatPresenter;->canSend:Z

    if-nez v0, :cond_2

    return-void

    .line 193
    :cond_2
    iput-object v2, p0, Lcom/intermedia/ChatPresenter;->lastMessage:Ljava/lang/String;

    .line 194
    iget v0, p0, Lcom/intermedia/ChatPresenter;->messageCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intermedia/ChatPresenter;->messageCounter:I

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/ChatPresenter;->lastClickTime:J

    .line 197
    new-instance v0, Lcom/intermedia/model/ChatMessage;

    .line 198
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->userId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->avatarUrl()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/intermedia/model/ChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/intermedia/ChatPresenter;->viewerSession:Lcom/intermedia/av/media/HPViewerSession;

    invoke-virtual {p1, v0}, Lcom/intermedia/av/media/HPViewerSession;->sendMessage(Lcom/intermedia/model/ChatMessage;)V

    .line 201
    invoke-direct {p0, v0}, Lcom/intermedia/ChatPresenter;->addChatMessage(Lcom/intermedia/model/ChatMessage;)V

    return-void
.end method

.method private showChatInput(Z)V
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatInput:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 277
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 278
    :goto_0
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    goto :goto_0

    :goto_1
    const-wide/16 v1, 0xfa

    if-eqz p1, :cond_1

    move-wide v3, v1

    goto :goto_2

    :cond_1
    const-wide/16 v3, 0x0

    .line 279
    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 281
    new-instance v1, Lcom/intermedia/ChatPresenter$$Lambda$8;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$$Lambda$8;-><init>(Lcom/intermedia/ChatPresenter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 286
    new-instance v1, Lcom/intermedia/ChatPresenter$5;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/ChatPresenter$5;-><init>(Lcom/intermedia/ChatPresenter;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startChatting()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/intermedia/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    new-instance v1, Lcom/intermedia/ChatPresenter$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$$Lambda$3;-><init>(Lcom/intermedia/ChatPresenter;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/view/CustomEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 172
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    new-instance v1, Lcom/intermedia/ChatPresenter$$Lambda$4;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$$Lambda$4;-><init>(Lcom/intermedia/ChatPresenter;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/view/CustomEditText;->setListener(Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;)V

    .line 173
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatFab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/intermedia/ChatPresenter$$Lambda$5;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$$Lambda$5;-><init>(Lcom/intermedia/ChatPresenter;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/FloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, v0}, Lcom/intermedia/ChatPresenter;->showChatInput(Z)V

    .line 175
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v1, v1, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$ChatPresenter()V
    .locals 0

    invoke-direct {p0}, Lcom/intermedia/ChatPresenter;->finishChatting()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$ChatPresenter(Lcom/intermedia/model/HQUser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/ChatPresenter;->sendChatMessage(Lcom/intermedia/model/HQUser;)V

    return-void
.end method

.method configure()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->chatAdapter:Lcom/intermedia/chat/ChatAdapter;

    iget-object v1, p0, Lcom/intermedia/ChatPresenter;->itemAddedCallback:Lcom/intermedia/function/NoArgCallback;

    invoke-virtual {v0, v1}, Lcom/intermedia/chat/ChatAdapter;->setItemAddedCallback(Lcom/intermedia/function/NoArgCallback;)V

    .line 103
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/intermedia/ChatPresenter$ChatPagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/intermedia/ChatPresenter$ChatPagerAdapter;-><init>(Lcom/intermedia/ChatPresenter;Lcom/intermedia/ChatPresenter$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 105
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/intermedia/ChatPresenter$3;

    invoke-direct {v2, p0}, Lcom/intermedia/ChatPresenter$3;-><init>(Lcom/intermedia/ChatPresenter;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/intermedia/ChatPresenter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 127
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 128
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/intermedia/chat/FastItemAnimator;

    invoke-direct {v1}, Lcom/intermedia/chat/FastItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 129
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/intermedia/ChatPresenter;->chatAdapter:Lcom/intermedia/chat/ChatAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 130
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/intermedia/ChatPresenter$4;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$4;-><init>(Lcom/intermedia/ChatPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 146
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatCountButton:Landroid/widget/Button;

    new-instance v1, Lcom/intermedia/ChatPresenter$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$$Lambda$0;-><init>(Lcom/intermedia/ChatPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatOverlay:Landroid/view/View;

    new-instance v1, Lcom/intermedia/ChatPresenter$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$$Lambda$1;-><init>(Lcom/intermedia/ChatPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatFab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/intermedia/ChatPresenter$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/intermedia/ChatPresenter$$Lambda$2;-><init>(Lcom/intermedia/ChatPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getSocketAPIListener()Lcom/intermedia/network/HypeSocketAPIListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;

    return-object v0
.end method

.method final synthetic lambda$configure$0$ChatPresenter(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/intermedia/ChatPresenter;->chatWasScrolled:Z

    .line 148
    iget-object p1, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object p1, p1, Lcom/intermedia/ChatViewHost;->chatRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->chatAdapter:Lcom/intermedia/chat/ChatAdapter;

    invoke-virtual {v0}, Lcom/intermedia/chat/ChatAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 149
    invoke-direct {p0}, Lcom/intermedia/ChatPresenter;->resetChatCountButton()V

    return-void
.end method

.method final synthetic lambda$configure$1$ChatPresenter(Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/intermedia/ChatPresenter;->finishChatting()V

    return-void
.end method

.method final synthetic lambda$configure$2$ChatPresenter(Landroid/view/View;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/intermedia/ChatPresenter;->startChatting()V

    return-void
.end method

.method final synthetic lambda$finishChatting$6$ChatPresenter()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    return-void
.end method

.method final synthetic lambda$penaltyMessage$5$ChatPresenter()V
    .locals 1

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/intermedia/ChatPresenter;->canSend:Z

    const-string v0, ""

    .line 224
    iput-object v0, p0, Lcom/intermedia/ChatPresenter;->lastMessage:Ljava/lang/String;

    return-void
.end method

.method final synthetic lambda$showChatInput$7$ChatPresenter(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 282
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 283
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 284
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatInput:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method final synthetic lambda$startChatting$3$ChatPresenter(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/intermedia/ChatPresenter;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {p1}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/intermedia/ChatPresenter$$Lambda$9;

    invoke-direct {p2, p0}, Lcom/intermedia/ChatPresenter$$Lambda$9;-><init>(Lcom/intermedia/ChatPresenter;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 166
    invoke-direct {p0}, Lcom/intermedia/ChatPresenter;->finishChatting()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic lambda$startChatting$4$ChatPresenter()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->viewHost:Lcom/intermedia/ChatViewHost;

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    return-void
.end method

.method release()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/intermedia/ChatPresenter;->chatAdapter:Lcom/intermedia/chat/ChatAdapter;

    invoke-virtual {v0}, Lcom/intermedia/chat/ChatAdapter;->release()V

    return-void
.end method
