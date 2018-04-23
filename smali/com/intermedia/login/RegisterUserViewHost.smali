.class Lcom/intermedia/login/RegisterUserViewHost;
.super Ljava/lang/Object;
.source "RegisterUserViewHost.java"


# instance fields
.field bgPatternImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0041
    .end annotation
.end field

.field dimenGrid2:I
    .annotation build Lbutterknife/BindDimen;
        value = 0x7f0700b6
    .end annotation
.end field

.field nextButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0122
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0146
    .end annotation
.end field

.field referralCodeEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0156
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a001b
    .end annotation
.end field

.field uploadAvatarPlusImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01e1
    .end annotation
.end field

.field userImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01e4
    .end annotation
.end field

.field usernameEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01e5
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/intermedia/login/RegisterUserViewModel$ViewModel;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/login/RegisterUserViewModel$ViewModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 43
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost;->bgPatternImageView:Landroid/widget/ImageView;

    sget-wide v0, Lcom/intermedia/util/AnimationUtils;->BG_ROTATION_DURATION:J

    invoke-static {v0, v1}, Lcom/intermedia/util/AnimationUtils;->centeredRotationAnim(J)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/jakewharton/rxbinding2/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding2/InitialValueObservable;

    move-result-object p1

    sget-object v0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$0;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lcom/jakewharton/rxbinding2/InitialValueObservable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$1;-><init>(Lcom/intermedia/login/RegisterUserViewHost;)V

    .line 46
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 48
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost;->referralCodeEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/jakewharton/rxbinding2/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding2/InitialValueObservable;

    move-result-object p1

    sget-object v0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$2;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lcom/jakewharton/rxbinding2/InitialValueObservable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$3;-><init>(Lcom/intermedia/login/RegisterUserViewHost;)V

    .line 49
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 51
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/jakewharton/rxbinding2/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding2/InitialValueObservable;

    move-result-object p1

    sget-object v0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$4;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lcom/jakewharton/rxbinding2/InitialValueObservable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->inputs:Lcom/intermedia/login/RegisterUserViewModel$Inputs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$5;->get$Lambda(Lcom/intermedia/login/RegisterUserViewModel$Inputs;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 54
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost;->referralCodeEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/jakewharton/rxbinding2/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding2/InitialValueObservable;

    move-result-object p1

    sget-object v0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$6;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lcom/jakewharton/rxbinding2/InitialValueObservable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->inputs:Lcom/intermedia/login/RegisterUserViewModel$Inputs;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$7;->get$Lambda(Lcom/intermedia/login/RegisterUserViewModel$Inputs;)Lio/reactivex/functions/Consumer;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private clearDrawables(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$new$0$RegisterUserViewHost(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/intermedia/login/RegisterUserViewHost;->clearDrawables(Landroid/widget/TextView;)V

    return-void
.end method

.method final synthetic lambda$new$1$RegisterUserViewHost(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost;->referralCodeEditText:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/intermedia/login/RegisterUserViewHost;->clearDrawables(Landroid/widget/TextView;)V

    return-void
.end method

.method setNextButtonEnabled(Z)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewHost;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewHost;->nextButton:Landroid/widget/Button;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 67
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
