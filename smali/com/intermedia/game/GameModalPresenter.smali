.class public Lcom/intermedia/game/GameModalPresenter;
.super Ljava/lang/Object;
.source "GameModalPresenter.java"

# interfaces
.implements Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;


# static fields
.field private static final SHOW_ELIMINATED_DELAY:J

.field private static final SHOW_OPT_IN_DELAY:J

.field private static final SHOW_YOU_WON_DELAY:J


# instance fields
.field congratulations:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f1100ad
    .end annotation
.end field

.field private final contentView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private eliminatedModalView:Lcom/intermedia/view/ModalView;

.field private extraLifeOptInModalView:Lcom/intermedia/view/ExtraLifeOptInModalView;

.field private final handler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final hostActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private lateModalView:Lcom/intermedia/view/ModalView;

.field private final modalBackgroundOverlay:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private thanksModalView:Lcom/intermedia/view/ModalView;

.field private final viewerSession:Lcom/intermedia/av/media/HPViewerSession;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private welcomeBackModalView:Lcom/intermedia/view/ModalView;

.field private youWonModalView:Lcom/intermedia/view/ModalView;

.field zeroDollars:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f1101b0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/intermedia/game/GameModalPresenter;->SHOW_ELIMINATED_DELAY:J

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/intermedia/game/GameModalPresenter;->SHOW_YOU_WON_DELAY:J

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/intermedia/game/GameModalPresenter;->SHOW_OPT_IN_DELAY:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/intermedia/game/PlayerStatusRepository;Landroid/widget/ImageView;Lcom/intermedia/av/media/HPViewerSession;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/game/PlayerStatusRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/intermedia/av/media/HPViewerSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->handler:Landroid/os/Handler;

    .line 53
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 54
    iput-object p1, p0, Lcom/intermedia/game/GameModalPresenter;->hostActivity:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/intermedia/game/GameModalPresenter;->contentView:Landroid/view/ViewGroup;

    .line 56
    iput-object p3, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    .line 57
    iput-object p4, p0, Lcom/intermedia/game/GameModalPresenter;->modalBackgroundOverlay:Landroid/widget/ImageView;

    .line 58
    iput-object p5, p0, Lcom/intermedia/game/GameModalPresenter;->viewerSession:Lcom/intermedia/av/media/HPViewerSession;

    return-void
.end method

.method private dismissModal(Lcom/intermedia/view/HQModalView;)V
    .locals 1
    .param p1    # Lcom/intermedia/view/HQModalView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 178
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/intermedia/view/HQModalView;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissModals()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->eliminatedModalView:Lcom/intermedia/view/ModalView;

    invoke-direct {p0, v0}, Lcom/intermedia/game/GameModalPresenter;->dismissModal(Lcom/intermedia/view/HQModalView;)V

    .line 170
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->extraLifeOptInModalView:Lcom/intermedia/view/ExtraLifeOptInModalView;

    invoke-direct {p0, v0}, Lcom/intermedia/game/GameModalPresenter;->dismissModal(Lcom/intermedia/view/HQModalView;)V

    .line 171
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->lateModalView:Lcom/intermedia/view/ModalView;

    invoke-direct {p0, v0}, Lcom/intermedia/game/GameModalPresenter;->dismissModal(Lcom/intermedia/view/HQModalView;)V

    .line 172
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->welcomeBackModalView:Lcom/intermedia/view/ModalView;

    invoke-direct {p0, v0}, Lcom/intermedia/game/GameModalPresenter;->dismissModal(Lcom/intermedia/view/HQModalView;)V

    .line 173
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->thanksModalView:Lcom/intermedia/view/ModalView;

    invoke-direct {p0, v0}, Lcom/intermedia/game/GameModalPresenter;->dismissModal(Lcom/intermedia/view/HQModalView;)V

    .line 174
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->youWonModalView:Lcom/intermedia/view/ModalView;

    invoke-direct {p0, v0}, Lcom/intermedia/game/GameModalPresenter;->dismissModal(Lcom/intermedia/view/HQModalView;)V

    return-void
.end method

.method private shouldShowEliminatedModal()Z
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    invoke-virtual {v0}, Lcom/intermedia/game/PlayerStatusRepository;->getModalsShown()Ljava/util/Set;

    move-result-object v0

    const-string v1, "eliminated"

    .line 160
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private shouldShowExtraLifeOptInModal()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    invoke-virtual {v0}, Lcom/intermedia/game/PlayerStatusRepository;->getModalsShown()Ljava/util/Set;

    move-result-object v0

    const-string v1, "extra_life_opt_in"

    .line 136
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private shouldShowLateModal()Z
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    .line 150
    invoke-virtual {v0}, Lcom/intermedia/game/PlayerStatusRepository;->getModalsShown()Ljava/util/Set;

    move-result-object v0

    const-string v1, "late"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    invoke-virtual {v1}, Lcom/intermedia/game/PlayerStatusRepository;->getModalsShown()Ljava/util/Set;

    move-result-object v1

    const-string v2, "eliminated"

    .line 152
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    .line 154
    invoke-virtual {v0}, Lcom/intermedia/game/PlayerStatusRepository;->getPlayerStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not_joined"

    invoke-static {v0, v1}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldShowWelcomeBackModal()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    invoke-virtual {v0}, Lcom/intermedia/game/PlayerStatusRepository;->getModalsShown()Ljava/util/Set;

    move-result-object v0

    const-string v1, "welcome_back"

    .line 142
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    .line 144
    invoke-virtual {v0}, Lcom/intermedia/game/PlayerStatusRepository;->getPlayerStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eliminated"

    invoke-static {v0, v1}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method final synthetic lambda$showEliminatedModal$0$GameModalPresenter(Lcom/intermedia/model/HQQuestionResult;)V
    .locals 3
    .param p1    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    new-instance v0, Lcom/intermedia/view/ModalView;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->hostActivity:Landroid/app/Activity;

    new-instance v2, Lcom/intermedia/model/ModalType$Eliminated;

    invoke-direct {v2, p1}, Lcom/intermedia/model/ModalType$Eliminated;-><init>(Lcom/intermedia/model/HQQuestionResult;)V

    iget-object p1, p0, Lcom/intermedia/game/GameModalPresenter;->modalBackgroundOverlay:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, p1}, Lcom/intermedia/view/ModalView;-><init>(Landroid/app/Activity;Lcom/intermedia/model/ModalType;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->eliminatedModalView:Lcom/intermedia/view/ModalView;

    .line 75
    iget-object p1, p0, Lcom/intermedia/game/GameModalPresenter;->eliminatedModalView:Lcom/intermedia/view/ModalView;

    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/intermedia/view/ModalView;->showAtParentCenter(Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    const-string v0, "eliminated"

    invoke-virtual {p1, v0}, Lcom/intermedia/game/PlayerStatusRepository;->setModalShown(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$showExtraLifeOptInModal$1$GameModalPresenter(Lcom/intermedia/model/HQQuestionResult;I)V
    .locals 7
    .param p1    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    new-instance v6, Lcom/intermedia/view/ExtraLifeOptInModalView;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->hostActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/intermedia/game/GameModalPresenter;->modalBackgroundOverlay:Landroid/widget/ImageView;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/view/ExtraLifeOptInModalView;-><init>(Landroid/app/Activity;Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;Lcom/intermedia/model/HQQuestionResult;Landroid/widget/ImageView;I)V

    iput-object v6, p0, Lcom/intermedia/game/GameModalPresenter;->extraLifeOptInModalView:Lcom/intermedia/view/ExtraLifeOptInModalView;

    .line 87
    iget-object p1, p0, Lcom/intermedia/game/GameModalPresenter;->extraLifeOptInModalView:Lcom/intermedia/view/ExtraLifeOptInModalView;

    iget-object p2, p0, Lcom/intermedia/game/GameModalPresenter;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/intermedia/view/ExtraLifeOptInModalView;->showAtParentCenter(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    const-string p2, "extra_life_opt_in"

    invoke-virtual {p1, p2}, Lcom/intermedia/game/PlayerStatusRepository;->setModalShown(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string p2, "showModal_extraLife"

    invoke-virtual {p1, p2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$showYouWonModal$2$GameModalPresenter(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->zeroDollars:Ljava/lang/String;

    .line 126
    invoke-static {p1, v1}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/intermedia/game/GameModalPresenter;->congratulations:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance v0, Lcom/intermedia/view/ModalView;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->hostActivity:Landroid/app/Activity;

    new-instance v2, Lcom/intermedia/model/ModalType$Winner;

    invoke-direct {v2, p1}, Lcom/intermedia/model/ModalType$Winner;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intermedia/game/GameModalPresenter;->modalBackgroundOverlay:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, p1}, Lcom/intermedia/view/ModalView;-><init>(Landroid/app/Activity;Lcom/intermedia/model/ModalType;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->youWonModalView:Lcom/intermedia/view/ModalView;

    .line 129
    iget-object p1, p0, Lcom/intermedia/game/GameModalPresenter;->youWonModalView:Lcom/intermedia/view/ModalView;

    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/intermedia/view/ModalView;->showAtParentCenter(Landroid/view/View;)V

    return-void
.end method

.method public notifyPresenterEliminated(Lcom/intermedia/model/HQQuestionResult;)V
    .locals 0
    .param p1    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    invoke-virtual {p0, p1}, Lcom/intermedia/game/GameModalPresenter;->showEliminatedModal(Lcom/intermedia/model/HQQuestionResult;)V

    return-void
.end method

.method public notifyPresenterUseExtraLife(Lcom/intermedia/model/HQQuestionResult;)V
    .locals 3
    .param p1    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->viewerSession:Lcom/intermedia/av/media/HPViewerSession;

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getQuestionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/intermedia/av/media/HPViewerSession;->sendUseExtraLife(J)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    invoke-direct {p0}, Lcom/intermedia/game/GameModalPresenter;->dismissModals()V

    return-void
.end method

.method showEliminatedModal(Lcom/intermedia/model/HQQuestionResult;)V
    .locals 4
    .param p1    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0}, Lcom/intermedia/game/GameModalPresenter;->shouldShowEliminatedModal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intermedia/game/GameModalPresenter$$Lambda$0;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/game/GameModalPresenter$$Lambda$0;-><init>(Lcom/intermedia/game/GameModalPresenter;Lcom/intermedia/model/HQQuestionResult;)V

    sget-wide v2, Lcom/intermedia/game/GameModalPresenter;->SHOW_ELIMINATED_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method showExtraLifeOptInModal(Lcom/intermedia/model/HQQuestionResult;I)V
    .locals 2
    .param p1    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0}, Lcom/intermedia/game/GameModalPresenter;->shouldShowExtraLifeOptInModal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intermedia/game/GameModalPresenter$$Lambda$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/intermedia/game/GameModalPresenter$$Lambda$1;-><init>(Lcom/intermedia/game/GameModalPresenter;Lcom/intermedia/model/HQQuestionResult;I)V

    sget-wide p1, Lcom/intermedia/game/GameModalPresenter;->SHOW_OPT_IN_DELAY:J

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method showLateModal()V
    .locals 4

    .line 106
    invoke-direct {p0}, Lcom/intermedia/game/GameModalPresenter;->shouldShowLateModal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/intermedia/view/ModalView;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->hostActivity:Landroid/app/Activity;

    new-instance v2, Lcom/intermedia/model/ModalType$Late;

    invoke-direct {v2}, Lcom/intermedia/model/ModalType$Late;-><init>()V

    iget-object v3, p0, Lcom/intermedia/game/GameModalPresenter;->modalBackgroundOverlay:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/intermedia/view/ModalView;-><init>(Landroid/app/Activity;Lcom/intermedia/model/ModalType;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->lateModalView:Lcom/intermedia/view/ModalView;

    .line 109
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->lateModalView:Lcom/intermedia/view/ModalView;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/intermedia/view/ModalView;->showAtParentCenter(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    const-string v1, "late"

    invoke-virtual {v0, v1}, Lcom/intermedia/game/PlayerStatusRepository;->setModalShown(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showThanksModal()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->thanksModalView:Lcom/intermedia/view/ModalView;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/intermedia/view/ModalView;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->hostActivity:Landroid/app/Activity;

    new-instance v2, Lcom/intermedia/model/ModalType$Thanks;

    invoke-direct {v2}, Lcom/intermedia/model/ModalType$Thanks;-><init>()V

    iget-object v3, p0, Lcom/intermedia/game/GameModalPresenter;->modalBackgroundOverlay:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/intermedia/view/ModalView;-><init>(Landroid/app/Activity;Lcom/intermedia/model/ModalType;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->thanksModalView:Lcom/intermedia/view/ModalView;

    .line 118
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->thanksModalView:Lcom/intermedia/view/ModalView;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/intermedia/view/ModalView;->showAtParentCenter(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method showWelcomeBackModal()V
    .locals 4

    .line 62
    invoke-direct {p0}, Lcom/intermedia/game/GameModalPresenter;->shouldShowWelcomeBackModal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/intermedia/view/ModalView;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->hostActivity:Landroid/app/Activity;

    new-instance v2, Lcom/intermedia/model/ModalType$WelcomeBack;

    invoke-direct {v2}, Lcom/intermedia/model/ModalType$WelcomeBack;-><init>()V

    iget-object v3, p0, Lcom/intermedia/game/GameModalPresenter;->modalBackgroundOverlay:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/intermedia/view/ModalView;-><init>(Landroid/app/Activity;Lcom/intermedia/model/ModalType;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->welcomeBackModalView:Lcom/intermedia/view/ModalView;

    .line 65
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->welcomeBackModalView:Lcom/intermedia/view/ModalView;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/intermedia/view/ModalView;->showAtParentCenter(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->playerStatusRepository:Lcom/intermedia/game/PlayerStatusRepository;

    const-string v1, "welcome_back"

    invoke-virtual {v0, v1}, Lcom/intermedia/game/PlayerStatusRepository;->setModalShown(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showYouWonModal(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 123
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->youWonModalView:Lcom/intermedia/view/ModalView;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intermedia/game/GameModalPresenter$$Lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/game/GameModalPresenter$$Lambda$2;-><init>(Lcom/intermedia/game/GameModalPresenter;Ljava/lang/String;)V

    sget-wide v2, Lcom/intermedia/game/GameModalPresenter;->SHOW_YOU_WON_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
