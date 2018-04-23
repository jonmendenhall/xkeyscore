.class public Lcom/intermedia/game/GamePresenter;
.super Ljava/lang/Object;
.source "GamePresenter.java"


# instance fields
.field private final extraLifeOptInEnabled:Z

.field private final extraLifePromptDuration:I

.field private isInTheGame:Z

.field private final modalPresenter:Lcom/intermedia/game/GameModalPresenter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private savedByExtraLife:Z

.field private final socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final viewHost:Lcom/intermedia/game/GameViewHost;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/intermedia/game/GameViewHost;Lcom/intermedia/game/GameModalPresenter;Lcom/intermedia/game/PlayerStatusRepository;ZI)V
    .locals 1
    .param p1    # Lcom/intermedia/game/GameViewHost;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/game/GameModalPresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/game/PlayerStatusRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/intermedia/game/GamePresenter$1;

    invoke-direct {v0, p0}, Lcom/intermedia/game/GamePresenter$1;-><init>(Lcom/intermedia/game/GamePresenter;)V

    iput-object v0, p0, Lcom/intermedia/game/GamePresenter;->socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;

    .line 75
    iput-object p1, p0, Lcom/intermedia/game/GamePresenter;->viewHost:Lcom/intermedia/game/GameViewHost;

    .line 76
    iput-object p2, p0, Lcom/intermedia/game/GamePresenter;->modalPresenter:Lcom/intermedia/game/GameModalPresenter;

    .line 77
    iput-object p3, p0, Lcom/intermedia/game/GamePresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    .line 78
    iput-boolean p4, p0, Lcom/intermedia/game/GamePresenter;->extraLifeOptInEnabled:Z

    .line 79
    iput p5, p0, Lcom/intermedia/game/GamePresenter;->extraLifePromptDuration:I

    .line 80
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    invoke-virtual {p1}, Lcom/intermedia/game/PlayerStatusRepository;->getPlayerIsInTheGame()Z

    move-result p1

    iput-boolean p1, p0, Lcom/intermedia/game/GamePresenter;->isInTheGame:Z

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/game/GamePresenter;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/intermedia/game/GamePresenter;->isInTheGame:Z

    return p0
.end method

.method static synthetic access$100(Lcom/intermedia/game/GamePresenter;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/intermedia/game/GamePresenter;->extraLifeOptInEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/intermedia/game/GamePresenter;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/intermedia/game/GamePresenter;->extraLifePromptDuration:I

    return p0
.end method

.method static synthetic access$300(Lcom/intermedia/game/GamePresenter;)Lcom/intermedia/game/GameModalPresenter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/intermedia/game/GamePresenter;->modalPresenter:Lcom/intermedia/game/GameModalPresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intermedia/game/GamePresenter;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/intermedia/game/GamePresenter;->updateIsInTheGame(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/intermedia/game/GamePresenter;J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/intermedia/game/GamePresenter;->setExtraLifeDrawable(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/intermedia/game/GamePresenter;)Lcom/intermedia/game/PlayerStatusRepository;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/intermedia/game/GamePresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    return-object p0
.end method

.method static synthetic access$702(Lcom/intermedia/game/GamePresenter;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/intermedia/game/GamePresenter;->savedByExtraLife:Z

    return p1
.end method

.method private setExtraLifeDrawable(J)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/intermedia/game/GamePresenter;->viewHost:Lcom/intermedia/game/GameViewHost;

    iget-object v0, v0, Lcom/intermedia/game/GameViewHost;->lifeHeartImageView:Landroid/widget/ImageView;

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_0

    const p1, 0x7f0800c0

    goto :goto_0

    :cond_0
    const p1, 0x7f0800c1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateIsInTheGame(Z)V
    .locals 1

    .line 84
    iput-boolean p1, p0, Lcom/intermedia/game/GamePresenter;->isInTheGame:Z

    .line 85
    iget-object v0, p0, Lcom/intermedia/game/GamePresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    invoke-virtual {v0, p1}, Lcom/intermedia/game/PlayerStatusRepository;->setPlayerIsInTheGame(Z)V

    return-void
.end method


# virtual methods
.method public getSocketAPIListener()Lcom/intermedia/network/HypeSocketAPIListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/intermedia/game/GamePresenter;->socketAPIListener:Lcom/intermedia/network/HypeSocketAPIListener;

    return-object v0
.end method

.method isInTheGame()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/intermedia/game/GamePresenter;->isInTheGame:Z

    return v0
.end method

.method savedByExtraLife()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/intermedia/game/GamePresenter;->savedByExtraLife:Z

    return v0
.end method
