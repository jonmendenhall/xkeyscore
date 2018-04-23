.class public Lcom/intermedia/GameActivity;
.super Lcom/intermedia/injection/BaseInjectedActivity;
.source "GameActivity.java"


# static fields
.field public static final RESULT_BROADCAST_FULL:I = 0x3

.field public static final RESULT_GAME_ENDED:I = 0x1

.field public static final RESULT_KICKED:I = 0x2

.field public static final RESULT_SOCKET_FAILURE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GameActivity"


# instance fields
.field private broadcast:Lcom/intermedia/model/Broadcast;

.field private chatPresenter:Lcom/intermedia/ChatPresenter;

.field connectivityChangeLogger:Lcom/intermedia/network/ConnectivityChangeLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private gamePresenter:Lcom/intermedia/game/GamePresenter;

.field gameViewLayout:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00cb
    .end annotation
.end field

.field mParticipantCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0134
    .end annotation
.end field

.field private mViewerSession:Lcom/intermedia/av/media/HPViewerSession;

.field mWinnersListView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01fb
    .end annotation
.end field

.field modalBackgroundOverlay:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0114
    .end annotation
.end field

.field private modalPresenter:Lcom/intermedia/game/GameModalPresenter;

.field private playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

.field private questionPresenter:Lcom/intermedia/game/QuestionPresenter;

.field sessionManager:Lcom/intermedia/user/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private streamController:Lcom/intermedia/game/StreamController;

.field userConfigRepository:Lcom/intermedia/config/UserConfigRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field videoOverlay:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0150
    .end annotation
.end field

.field private webSocketSnackbarPresenter:Lcom/intermedia/network/WebSocketSnackbarPresenter;

.field private winners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/intermedia/model/HQGameWinner;",
            ">;"
        }
    .end annotation
.end field

.field private winnersAdapter:Lcom/intermedia/adapters/WinnerListAdapter;

.field winnersBadgeTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01f9
    .end annotation
.end field

.field winnersContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01fa
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/intermedia/injection/BaseInjectedActivity;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intermedia/GameActivity;->winners:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Lcom/intermedia/GameActivity$1;

    invoke-direct {v0, p0}, Lcom/intermedia/GameActivity$1;-><init>(Lcom/intermedia/GameActivity;)V

    iput-object v0, p0, Lcom/intermedia/GameActivity;->socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/GameActivity;)Lcom/intermedia/game/PlayerStatusRepository;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/intermedia/GameActivity;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intermedia/GameActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/intermedia/GameActivity;->winners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/intermedia/GameActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/intermedia/GameActivity;->winners:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/intermedia/GameActivity;)Lcom/intermedia/adapters/WinnerListAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/intermedia/GameActivity;->winnersAdapter:Lcom/intermedia/adapters/WinnerListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intermedia/GameActivity;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/intermedia/GameActivity;->showWinners(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/intermedia/GameActivity;)Lcom/intermedia/game/GameModalPresenter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/intermedia/GameActivity;->modalPresenter:Lcom/intermedia/game/GameModalPresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/intermedia/GameActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/intermedia/GameActivity;->hideWinners()V

    return-void
.end method

.method private hideWinners()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/intermedia/GameActivity;->winnersContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/intermedia/GameActivity;->videoOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showWinners(I)V
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/intermedia/GameActivity;->winnersBadgeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/intermedia/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f0005

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p0, Lcom/intermedia/GameActivity;->winnersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/intermedia/GameActivity;->videoOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/intermedia/model/Broadcast;ZI)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/intermedia/model/Broadcast;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intermedia/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "broadcast"

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "eloiEnabled"

    .line 105
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "el_prompt_ms"

    .line 106
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 107
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .locals 0
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 230
    invoke-interface {p1, p0}, Lcom/intermedia/injection/BaseActivityComponent;->inject(Lcom/intermedia/GameActivity;)V

    return-void
.end method

.method final synthetic lambda$showGoHomeAlert$0$GameActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 293
    invoke-virtual {p0}, Lcom/intermedia/GameActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v9, p0

    .line 174
    invoke-super/range {p0 .. p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001e

    .line 175
    invoke-virtual {v9, v0}, Lcom/intermedia/GameActivity;->setContentView(I)V

    .line 176
    invoke-static/range {p0 .. p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 178
    invoke-static {}, Lcom/intermedia/util/SoundEffectsPlayer;->getInstance()Lcom/intermedia/util/SoundEffectsPlayer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/intermedia/util/SoundEffectsPlayer;->prepareQuestionAudio(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "game_opened"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 181
    iget-object v0, v9, Lcom/intermedia/GameActivity;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    invoke-virtual {v0}, Lcom/intermedia/av/media/SocketSessionReporter;->reset()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/intermedia/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/Broadcast;

    iput-object v0, v9, Lcom/intermedia/GameActivity;->broadcast:Lcom/intermedia/model/Broadcast;

    .line 184
    iget-object v0, v9, Lcom/intermedia/GameActivity;->broadcast:Lcom/intermedia/model/Broadcast;

    invoke-static {v0}, Lcom/intermedia/util/Asserts;->isNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v10, Lcom/intermedia/av/media/HPViewerSession;

    iget-object v0, v9, Lcom/intermedia/GameActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v0}, Lcom/intermedia/user/session/SessionManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v9, Lcom/intermedia/GameActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    .line 187
    invoke-virtual {v0}, Lcom/intermedia/user/UserRepository;->getSegmentToken()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v9, Lcom/intermedia/GameActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v0}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/intermedia/GameActivity;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    iget-object v6, v9, Lcom/intermedia/GameActivity;->broadcast:Lcom/intermedia/model/Broadcast;

    iget-object v7, v9, Lcom/intermedia/GameActivity;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    iget-object v8, v9, Lcom/intermedia/GameActivity;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    move-object v0, v10

    move-object v1, v9

    invoke-direct/range {v0 .. v8}, Lcom/intermedia/av/media/HPViewerSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/network/NetworkConnectivityManager;Lcom/intermedia/model/Broadcast;Lcom/intermedia/av/media/SocketSessionReporter;Lcom/intermedia/util/logging/DebugReporter;)V

    iput-object v10, v9, Lcom/intermedia/GameActivity;->mViewerSession:Lcom/intermedia/av/media/HPViewerSession;

    .line 191
    new-instance v0, Lcom/intermedia/game/PlayerStatusRepository;

    iget-object v1, v9, Lcom/intermedia/GameActivity;->broadcast:Lcom/intermedia/model/Broadcast;

    invoke-virtual {v1}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v9, v1, v2}, Lcom/intermedia/game/PlayerStatusRepository;-><init>(Landroid/content/Context;J)V

    iput-object v0, v9, Lcom/intermedia/GameActivity;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    .line 192
    new-instance v6, Lcom/intermedia/game/GameModalPresenter;

    iget-object v2, v9, Lcom/intermedia/GameActivity;->gameViewLayout:Landroid/view/ViewGroup;

    iget-object v3, v9, Lcom/intermedia/GameActivity;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    iget-object v4, v9, Lcom/intermedia/GameActivity;->modalBackgroundOverlay:Landroid/widget/ImageView;

    iget-object v5, v9, Lcom/intermedia/GameActivity;->mViewerSession:Lcom/intermedia/av/media/HPViewerSession;

    move-object v0, v6

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/game/GameModalPresenter;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/intermedia/game/PlayerStatusRepository;Landroid/widget/ImageView;Lcom/intermedia/av/media/HPViewerSession;)V

    iput-object v6, v9, Lcom/intermedia/GameActivity;->modalPresenter:Lcom/intermedia/game/GameModalPresenter;

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/intermedia/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eloiEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/intermedia/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "el_prompt_ms"

    sget-object v2, Lcom/intermedia/model/config/Config;->DEFAULT:Lcom/intermedia/model/config/Config;

    .line 198
    invoke-virtual {v2}, Lcom/intermedia/model/config/Config;->elPromptMs()I

    move-result v2

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 199
    new-instance v0, Lcom/intermedia/game/GamePresenter;

    new-instance v4, Lcom/intermedia/game/GameViewHost;

    iget-object v1, v9, Lcom/intermedia/GameActivity;->gameViewLayout:Landroid/view/ViewGroup;

    invoke-direct {v4, v1}, Lcom/intermedia/game/GameViewHost;-><init>(Landroid/view/View;)V

    iget-object v5, v9, Lcom/intermedia/GameActivity;->modalPresenter:Lcom/intermedia/game/GameModalPresenter;

    iget-object v6, v9, Lcom/intermedia/GameActivity;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/intermedia/game/GamePresenter;-><init>(Lcom/intermedia/game/GameViewHost;Lcom/intermedia/game/GameModalPresenter;Lcom/intermedia/game/PlayerStatusRepository;ZI)V

    iput-object v0, v9, Lcom/intermedia/GameActivity;->gamePresenter:Lcom/intermedia/game/GamePresenter;

    .line 202
    new-instance v0, Lcom/intermedia/game/QuestionPresenter;

    new-instance v11, Lcom/intermedia/game/QuestionViewHost;

    const v1, 0x7f0a014c

    .line 203
    invoke-virtual {v9, v1}, Lcom/intermedia/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v9, Lcom/intermedia/GameActivity;->videoOverlay:Landroid/widget/ImageView;

    invoke-direct {v11, v1, v2}, Lcom/intermedia/game/QuestionViewHost;-><init>(Landroid/view/View;Landroid/widget/ImageView;)V

    iget-object v12, v9, Lcom/intermedia/GameActivity;->gamePresenter:Lcom/intermedia/game/GamePresenter;

    iget-object v13, v9, Lcom/intermedia/GameActivity;->mViewerSession:Lcom/intermedia/av/media/HPViewerSession;

    iget-object v14, v9, Lcom/intermedia/GameActivity;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    iget-object v15, v9, Lcom/intermedia/GameActivity;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/intermedia/game/QuestionPresenter;-><init>(Lcom/intermedia/game/QuestionViewHost;Lcom/intermedia/game/GamePresenter;Lcom/intermedia/av/media/HPViewerSession;Lcom/intermedia/game/PlayerStatusRepository;Lcom/intermedia/util/logging/DebugReporter;)V

    iput-object v0, v9, Lcom/intermedia/GameActivity;->questionPresenter:Lcom/intermedia/game/QuestionPresenter;

    .line 205
    iget-object v0, v9, Lcom/intermedia/GameActivity;->questionPresenter:Lcom/intermedia/game/QuestionPresenter;

    invoke-virtual {v0}, Lcom/intermedia/game/QuestionPresenter;->configure()V

    .line 207
    new-instance v0, Lcom/intermedia/ChatPresenter;

    new-instance v1, Lcom/intermedia/ChatViewHost;

    iget-object v2, v9, Lcom/intermedia/GameActivity;->gameViewLayout:Landroid/view/ViewGroup;

    .line 208
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c002d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v3}, Lcom/intermedia/ChatViewHost;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    iget-object v2, v9, Lcom/intermedia/GameActivity;->mViewerSession:Lcom/intermedia/av/media/HPViewerSession;

    iget-object v3, v9, Lcom/intermedia/GameActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/intermedia/ChatPresenter;-><init>(Landroid/content/Context;Lcom/intermedia/ChatViewHost;Lcom/intermedia/av/media/HPViewerSession;Lcom/intermedia/user/UserRepository;)V

    iput-object v0, v9, Lcom/intermedia/GameActivity;->chatPresenter:Lcom/intermedia/ChatPresenter;

    .line 210
    iget-object v0, v9, Lcom/intermedia/GameActivity;->chatPresenter:Lcom/intermedia/ChatPresenter;

    invoke-virtual {v0}, Lcom/intermedia/ChatPresenter;->configure()V

    .line 212
    new-instance v0, Lcom/intermedia/adapters/WinnerListAdapter;

    invoke-direct {v0}, Lcom/intermedia/adapters/WinnerListAdapter;-><init>()V

    iput-object v0, v9, Lcom/intermedia/GameActivity;->winnersAdapter:Lcom/intermedia/adapters/WinnerListAdapter;

    .line 213
    iget-object v0, v9, Lcom/intermedia/GameActivity;->mWinnersListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v9, Lcom/intermedia/GameActivity;->winnersAdapter:Lcom/intermedia/adapters/WinnerListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 214
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, v9}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 215
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 216
    iget-object v1, v9, Lcom/intermedia/GameActivity;->mWinnersListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 218
    new-instance v0, Lcom/intermedia/game/StreamController;

    new-instance v3, Lcom/intermedia/game/GameStreamViewHost;

    iget-object v1, v9, Lcom/intermedia/GameActivity;->gameViewLayout:Landroid/view/ViewGroup;

    invoke-direct {v3, v1}, Lcom/intermedia/game/GameStreamViewHost;-><init>(Landroid/view/View;)V

    iget-object v1, v9, Lcom/intermedia/GameActivity;->broadcast:Lcom/intermedia/model/Broadcast;

    .line 219
    invoke-virtual {v1}, Lcom/intermedia/model/Broadcast;->streams()Lcom/intermedia/model/Streams;

    move-result-object v4

    iget-object v5, v9, Lcom/intermedia/GameActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    iget-object v6, v9, Lcom/intermedia/GameActivity;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    iget-object v7, v9, Lcom/intermedia/GameActivity;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    move-object v2, v0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/intermedia/game/StreamController;-><init>(Lcom/intermedia/game/GameStreamViewHost;Lcom/intermedia/model/Streams;Lcom/intermedia/config/UserConfigRepository;Lcom/intermedia/network/NetworkConnectivityManager;Lcom/intermedia/util/logging/DebugReporter;Landroid/os/Bundle;)V

    iput-object v0, v9, Lcom/intermedia/GameActivity;->streamController:Lcom/intermedia/game/StreamController;

    .line 222
    new-instance v0, Lcom/intermedia/network/WebSocketSnackbarPresenter;

    iget-object v1, v9, Lcom/intermedia/GameActivity;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    invoke-direct {v0, v9, v1}, Lcom/intermedia/network/WebSocketSnackbarPresenter;-><init>(Landroid/app/Activity;Lcom/intermedia/network/NetworkConnectivityManager;)V

    iput-object v0, v9, Lcom/intermedia/GameActivity;->webSocketSnackbarPresenter:Lcom/intermedia/network/WebSocketSnackbarPresenter;

    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/intermedia/GameActivity;->hideWinners()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 275
    invoke-super {p0}, Lcom/intermedia/injection/BaseInjectedActivity;->onDestroy()V

    .line 276
    iget-object v0, p0, Lcom/intermedia/GameActivity;->chatPresenter:Lcom/intermedia/ChatPresenter;

    invoke-virtual {v0}, Lcom/intermedia/ChatPresenter;->release()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/intermedia/GameActivity;->setIntent(Landroid/content/Intent;)V

    .line 237
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "game_opened"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    const-string v0, "broadcast"

    .line 238
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/Broadcast;

    iput-object p1, p0, Lcom/intermedia/GameActivity;->broadcast:Lcom/intermedia/model/Broadcast;

    .line 239
    iget-object p1, p0, Lcom/intermedia/GameActivity;->broadcast:Lcom/intermedia/model/Broadcast;

    invoke-static {p1}, Lcom/intermedia/util/Asserts;->isNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 299
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 300
    iget-object v0, p0, Lcom/intermedia/GameActivity;->streamController:Lcom/intermedia/game/StreamController;

    invoke-virtual {v0, p1}, Lcom/intermedia/game/StreamController;->onSaveState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 244
    invoke-super {p0}, Lcom/intermedia/injection/BaseInjectedActivity;->onStart()V

    .line 245
    iget-object v0, p0, Lcom/intermedia/GameActivity;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v1, Lcom/intermedia/util/logging/events/GameState$Opened;

    const-string v2, "GameActivity"

    invoke-direct {v1, v2}, Lcom/intermedia/util/logging/events/GameState$Opened;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 248
    iget-object v0, p0, Lcom/intermedia/GameActivity;->mViewerSession:Lcom/intermedia/av/media/HPViewerSession;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/intermedia/network/HypeSocketAPIListener;

    iget-object v2, p0, Lcom/intermedia/GameActivity;->gamePresenter:Lcom/intermedia/game/GamePresenter;

    invoke-virtual {v2}, Lcom/intermedia/game/GamePresenter;->getSocketAPIListener()Lcom/intermedia/network/HypeSocketAPIListener;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/intermedia/GameActivity;->questionPresenter:Lcom/intermedia/game/QuestionPresenter;

    .line 249
    invoke-virtual {v2}, Lcom/intermedia/game/QuestionPresenter;->getSocketAPIListener()Lcom/intermedia/network/HypeSocketAPIListener;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/intermedia/GameActivity;->chatPresenter:Lcom/intermedia/ChatPresenter;

    .line 250
    invoke-virtual {v2}, Lcom/intermedia/ChatPresenter;->getSocketAPIListener()Lcom/intermedia/network/HypeSocketAPIListener;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/intermedia/GameActivity;->socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/intermedia/game/SocketMessageLogger;

    iget-object v3, p0, Lcom/intermedia/GameActivity;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    invoke-direct {v2, v3}, Lcom/intermedia/game/SocketMessageLogger;-><init>(Lcom/intermedia/util/logging/DebugReporter;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 248
    invoke-virtual {v0, v1}, Lcom/intermedia/av/media/HPViewerSession;->addListeners([Lcom/intermedia/network/HypeSocketAPIListener;)V

    .line 252
    iget-object v0, p0, Lcom/intermedia/GameActivity;->mViewerSession:Lcom/intermedia/av/media/HPViewerSession;

    invoke-virtual {v0}, Lcom/intermedia/av/media/HPViewerSession;->join()V

    .line 254
    iget-object v0, p0, Lcom/intermedia/GameActivity;->streamController:Lcom/intermedia/game/StreamController;

    invoke-virtual {v0}, Lcom/intermedia/game/StreamController;->start()V

    .line 255
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/GameActivity;->webSocketSnackbarPresenter:Lcom/intermedia/network/WebSocketSnackbarPresenter;

    sget-object v2, Lcom/intermedia/network/WebSocketSnackbarPresenter;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 258
    iget-object v0, p0, Lcom/intermedia/GameActivity;->connectivityChangeLogger:Lcom/intermedia/network/ConnectivityChangeLogger;

    sget-object v1, Lcom/intermedia/network/NetworkConnectivityManager;->FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/GameActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 263
    invoke-super {p0}, Lcom/intermedia/injection/BaseInjectedActivity;->onStop()V

    .line 264
    iget-object v0, p0, Lcom/intermedia/GameActivity;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v1, Lcom/intermedia/util/logging/events/GameState$Closed;

    const-string v2, "GameActivity"

    invoke-direct {v1, v2}, Lcom/intermedia/util/logging/events/GameState$Closed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 265
    iget-object v0, p0, Lcom/intermedia/GameActivity;->streamController:Lcom/intermedia/game/StreamController;

    invoke-virtual {v0}, Lcom/intermedia/game/StreamController;->stop()V

    .line 266
    iget-object v0, p0, Lcom/intermedia/GameActivity;->mViewerSession:Lcom/intermedia/av/media/HPViewerSession;

    invoke-virtual {v0}, Lcom/intermedia/av/media/HPViewerSession;->leaveBroadcast()V

    .line 267
    invoke-static {}, Lcom/intermedia/util/SoundEffectsPlayer;->getInstance()Lcom/intermedia/util/SoundEffectsPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/util/SoundEffectsPlayer;->stop()V

    .line 268
    iget-object v0, p0, Lcom/intermedia/GameActivity;->modalPresenter:Lcom/intermedia/game/GameModalPresenter;

    invoke-virtual {v0}, Lcom/intermedia/game/GameModalPresenter;->release()V

    .line 269
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/GameActivity;->webSocketSnackbarPresenter:Lcom/intermedia/network/WebSocketSnackbarPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    iget-object v0, p0, Lcom/intermedia/GameActivity;->connectivityChangeLogger:Lcom/intermedia/network/ConnectivityChangeLogger;

    invoke-virtual {p0, v0}, Lcom/intermedia/GameActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public showGoHomeAlert(Landroid/view/View;)V
    .locals 2

    .line 292
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Are you sure you leave the game?"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Yes"

    new-instance v1, Lcom/intermedia/GameActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/intermedia/GameActivity$$Lambda$0;-><init>(Lcom/intermedia/GameActivity;)V

    .line 293
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "No"

    const/4 v1, 0x0

    .line 294
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
