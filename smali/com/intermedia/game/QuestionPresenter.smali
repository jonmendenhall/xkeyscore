.class public Lcom/intermedia/game/QuestionPresenter;
.super Ljava/lang/Object;
.source "QuestionPresenter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "QuestionPresenter"


# instance fields
.field private final debugReporter:Lcom/intermedia/util/logging/DebugReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final gamePresenter:Lcom/intermedia/game/GamePresenter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private lastQuestionNumber:I

.field private final playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final viewHost:Lcom/intermedia/game/QuestionViewHost;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final viewerSession:Lcom/intermedia/av/media/HPViewerSession;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/intermedia/game/QuestionViewHost;Lcom/intermedia/game/GamePresenter;Lcom/intermedia/av/media/HPViewerSession;Lcom/intermedia/game/PlayerStatusRepository;Lcom/intermedia/util/logging/DebugReporter;)V
    .locals 1
    .param p1    # Lcom/intermedia/game/QuestionViewHost;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/game/GamePresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/av/media/HPViewerSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/intermedia/game/PlayerStatusRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/intermedia/util/logging/DebugReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/intermedia/game/QuestionPresenter$1;

    invoke-direct {v0, p0}, Lcom/intermedia/game/QuestionPresenter$1;-><init>(Lcom/intermedia/game/QuestionPresenter;)V

    iput-object v0, p0, Lcom/intermedia/game/QuestionPresenter;->socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;

    .line 190
    iput-object p1, p0, Lcom/intermedia/game/QuestionPresenter;->viewHost:Lcom/intermedia/game/QuestionViewHost;

    .line 191
    iput-object p2, p0, Lcom/intermedia/game/QuestionPresenter;->gamePresenter:Lcom/intermedia/game/GamePresenter;

    .line 192
    iput-object p3, p0, Lcom/intermedia/game/QuestionPresenter;->viewerSession:Lcom/intermedia/av/media/HPViewerSession;

    .line 193
    iput-object p4, p0, Lcom/intermedia/game/QuestionPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    .line 194
    iput-object p5, p0, Lcom/intermedia/game/QuestionPresenter;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/intermedia/game/QuestionPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    return-object p0
.end method

.method static synthetic access$102(Lcom/intermedia/game/QuestionPresenter;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/intermedia/game/QuestionPresenter;->lastQuestionNumber:I

    return p1
.end method

.method static synthetic access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/intermedia/game/QuestionPresenter;->viewHost:Lcom/intermedia/game/QuestionViewHost;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/util/logging/DebugReporter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/intermedia/game/QuestionPresenter;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intermedia/game/QuestionPresenter;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/intermedia/game/QuestionPresenter;->showQuestionView(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/intermedia/game/QuestionPresenter;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/intermedia/game/QuestionPresenter;->updateEliminatedState()V

    return-void
.end method

.method static synthetic access$600(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/GamePresenter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/intermedia/game/QuestionPresenter;->gamePresenter:Lcom/intermedia/game/GamePresenter;

    return-object p0
.end method

.method private showQuestionView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter;->viewHost:Lcom/intermedia/game/QuestionViewHost;

    iget-object v0, v0, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {v0, p1}, Lcom/intermedia/view/QuestionView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter;->viewHost:Lcom/intermedia/game/QuestionViewHost;

    iget-object v0, v0, Lcom/intermedia/game/QuestionViewHost;->videoOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateEliminatedState()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter;->gamePresenter:Lcom/intermedia/game/GamePresenter;

    invoke-virtual {v0}, Lcom/intermedia/game/GamePresenter;->isInTheGame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/intermedia/game/QuestionPresenter;->viewHost:Lcom/intermedia/game/QuestionViewHost;

    iget-object v1, v1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {v1}, Lcom/intermedia/view/QuestionView;->showEliminatedBadge()V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/intermedia/game/QuestionPresenter;->viewHost:Lcom/intermedia/game/QuestionViewHost;

    iget-object v1, v1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v1, Lcom/intermedia/view/QuestionView;->answersDisabled:Z

    return-void
.end method


# virtual methods
.method public configure()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter;->viewHost:Lcom/intermedia/game/QuestionViewHost;

    iget-object v0, v0, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    new-instance v1, Lcom/intermedia/game/QuestionPresenter$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/intermedia/game/QuestionPresenter$$Lambda$0;-><init>(Lcom/intermedia/game/QuestionPresenter;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/view/QuestionView;->setAnswerSelectedListener(Lcom/intermedia/view/QuestionView$QuestionViewListener;)V

    return-void
.end method

.method public getSocketAPIListener()Lcom/intermedia/network/HypeSocketAPIListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter;->socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;

    return-object v0
.end method

.method final synthetic lambda$configure$0$QuestionPresenter(Lcom/intermedia/model/HQAnswer;)V
    .locals 7

    .line 207
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter;->viewHost:Lcom/intermedia/game/QuestionViewHost;

    iget-object v0, v0, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {v0}, Lcom/intermedia/view/QuestionView;->getQuestionId()J

    move-result-wide v2

    .line 208
    invoke-virtual {p1}, Lcom/intermedia/model/HQAnswer;->getAnswerId()I

    move-result p1

    int-to-long v4, p1

    .line 209
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter;->gamePresenter:Lcom/intermedia/game/GamePresenter;

    invoke-virtual {p1}, Lcom/intermedia/game/GamePresenter;->isInTheGame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    invoke-virtual {p1, v2, v3}, Lcom/intermedia/game/PlayerStatusRepository;->hasAnsweredQuestion(J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/intermedia/game/PlayerStatusRepository;->addQuestionAnswered(JJ)V

    .line 212
    iget-object v1, p0, Lcom/intermedia/game/QuestionPresenter;->viewerSession:Lcom/intermedia/av/media/HPViewerSession;

    iget v6, p0, Lcom/intermedia/game/QuestionPresenter;->lastQuestionNumber:I

    .line 213
    invoke-virtual/range {v1 .. v6}, Lcom/intermedia/av/media/HPViewerSession;->answerQuestion(JJI)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter;->viewHost:Lcom/intermedia/game/QuestionViewHost;

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/intermedia/view/QuestionView;->clearAnswers(Z)V

    :cond_1
    :goto_0
    return-void
.end method
