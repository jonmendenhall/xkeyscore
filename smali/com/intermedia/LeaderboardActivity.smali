.class public final Lcom/intermedia/LeaderboardActivity;
.super Lcom/intermedia/injection/BaseInjectedActivity;
.source "LeaderboardActivity.java"

# interfaces
.implements Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/LeaderboardActivity$LeaderboardActivityException;
    }
.end annotation


# instance fields
.field bgPatternImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0041
    .end annotation
.end field

.field leaderboardProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00ee
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00f0
    .end annotation
.end field

.field selfAvatarImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a018e
    .end annotation
.end field

.field selfBalanceTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a018f
    .end annotation
.end field

.field selfRankTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0190
    .end annotation
.end field

.field selfUsernameTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0191
    .end annotation
.end field

.field private viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/intermedia/injection/BaseInjectedActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intermedia/LeaderboardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public allTimeButtonClicked(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Inputs;

    invoke-interface {v0, p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$Inputs;->allTimeButtonClicked(I)V

    return-void
.end method

.method protected inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .locals 0
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-interface {p1, p0}, Lcom/intermedia/injection/BaseActivityComponent;->inject(Lcom/intermedia/LeaderboardActivity;)V

    return-void
.end method

.method final synthetic lambda$onCreate$0$LeaderboardActivity(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/LeaderboardActivity$LeaderboardActivityException;

    const-string v3, "Failed to load leaderboard"

    invoke-direct {v2, p0, v3, p1}, Lcom/intermedia/LeaderboardActivity$LeaderboardActivityException;-><init>(Lcom/intermedia/LeaderboardActivity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method final synthetic lambda$onCreate$1$LeaderboardActivity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->selfAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method final synthetic lambda$onCreate$2$LeaderboardActivity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->selfBalanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final synthetic lambda$onCreate$3$LeaderboardActivity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->selfRankTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final synthetic lambda$onCreate$4$LeaderboardActivity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->selfUsernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 47
    invoke-virtual {p0, p1}, Lcom/intermedia/LeaderboardActivity;->setContentView(I)V

    .line 48
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 49
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "leaderboard_opened"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/intermedia/LeaderboardActivity;->bgPatternImageView:Landroid/widget/ImageView;

    sget-wide v0, Lcom/intermedia/util/AnimationUtils;->BG_ROTATION_DURATION:J

    invoke-static {v0, v1}, Lcom/intermedia/util/AnimationUtils;->centeredRotationAnim(J)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    new-instance p1, Lcom/intermedia/adapters/LeaderboardAdapter;

    invoke-direct {p1, p0}, Lcom/intermedia/adapters/LeaderboardAdapter;-><init>(Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;)V

    .line 54
    new-instance v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object v1, p0, Lcom/intermedia/LeaderboardActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-direct {v0, v1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;-><init>(Lcom/intermedia/user/UserRepository;)V

    iput-object v0, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    .line 55
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;->leaders()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intermedia/LeaderboardActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 59
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/intermedia/LeaderboardActivity$$Lambda$0;->get$Lambda(Lcom/intermedia/adapters/LeaderboardAdapter;)Lio/reactivex/functions/Consumer;

    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 62
    iget-object p1, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;->progressBarIsGone()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/LeaderboardActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 63
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->leaderboardProgressBar:Landroid/widget/ProgressBar;

    .line 64
    invoke-static {v0}, Lcom/intermedia/util/ViewUtils;->setGone(Landroid/view/View;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 66
    iget-object p1, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;->reportLeaderboardError()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/LeaderboardActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 67
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/LeaderboardActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/intermedia/LeaderboardActivity$$Lambda$1;-><init>(Lcom/intermedia/LeaderboardActivity;)V

    .line 68
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 74
    iget-object p1, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;->selfAvatarUrl()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/LeaderboardActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 75
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/LeaderboardActivity$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/intermedia/LeaderboardActivity$$Lambda$2;-><init>(Lcom/intermedia/LeaderboardActivity;)V

    .line 76
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 78
    iget-object p1, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;->selfBalanceTextViewText()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/LeaderboardActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 79
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/LeaderboardActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/intermedia/LeaderboardActivity$$Lambda$3;-><init>(Lcom/intermedia/LeaderboardActivity;)V

    .line 80
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 82
    iget-object p1, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;->selfRankTextViewText()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/LeaderboardActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 83
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/LeaderboardActivity$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/intermedia/LeaderboardActivity$$Lambda$4;-><init>(Lcom/intermedia/LeaderboardActivity;)V

    .line 84
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 86
    iget-object p1, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;->selfUsernameTextViewText()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/LeaderboardActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 87
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/LeaderboardActivity$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/intermedia/LeaderboardActivity$$Lambda$5;-><init>(Lcom/intermedia/LeaderboardActivity;)V

    .line 88
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public thisWeekButtonClicked(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity;->viewModel:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Inputs;

    invoke-interface {v0, p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$Inputs;->thisWeekButtonClicked(I)V

    return-void
.end method
