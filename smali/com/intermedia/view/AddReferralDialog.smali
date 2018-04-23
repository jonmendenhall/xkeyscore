.class public final Lcom/intermedia/view/AddReferralDialog;
.super Landroid/app/AlertDialog;
.source "AddReferralDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/view/AddReferralDialog$ViewHost;
    }
.end annotation


# instance fields
.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

.field private viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    const v0, 0x7f0c0044

    const/4 v1, 0x0

    .line 43
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/intermedia/view/AddReferralDialog;->setView(Landroid/view/View;)V

    .line 45
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 47
    invoke-virtual {p0}, Lcom/intermedia/view/AddReferralDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0}, Lcom/intermedia/view/AddReferralDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 50
    new-instance v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    invoke-direct {v0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;-><init>()V

    iput-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    .line 51
    new-instance v0, Lcom/intermedia/view/AddReferralDialog$ViewHost;

    const v1, 0x7f0a009f

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {v0, p1}, Lcom/intermedia/view/AddReferralDialog$ViewHost;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    .line 54
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/AddReferralDialog$ViewHost;->titleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->applyReferralCodeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/AddReferralDialog$ViewHost;->referralEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->referralCodeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "profileMenu_referralShown"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->referralEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding2/InitialValueObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    iget-object v1, v1, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Inputs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/intermedia/view/AddReferralDialog$$Lambda$0;->get$Lambda(Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Inputs;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lcom/intermedia/view/AddReferralDialog$$Lambda$1;->$instance:Lio/reactivex/functions/Consumer;

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/jakewharton/rxbinding2/InitialValueObservable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 61
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->doneButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/AddReferralDialog$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/intermedia/view/AddReferralDialog$$Lambda$2;-><init>(Lcom/intermedia/view/AddReferralDialog;)V

    sget-object v2, Lcom/intermedia/view/AddReferralDialog$$Lambda$3;->$instance:Lio/reactivex/functions/Consumer;

    .line 62
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 67
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;->addReferralApiSuccess()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/AddReferralDialog$$Lambda$4;

    invoke-direct {v1, p0}, Lcom/intermedia/view/AddReferralDialog$$Lambda$4;-><init>(Lcom/intermedia/view/AddReferralDialog;)V

    sget-object v2, Lcom/intermedia/view/AddReferralDialog$$Lambda$5;->$instance:Lio/reactivex/functions/Consumer;

    .line 68
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 75
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;->clearDrawables()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/AddReferralDialog$$Lambda$6;

    invoke-direct {v1, p0}, Lcom/intermedia/view/AddReferralDialog$$Lambda$6;-><init>(Lcom/intermedia/view/AddReferralDialog;)V

    .line 76
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 78
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;->dismissDialog()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/AddReferralDialog$$Lambda$7;

    invoke-direct {v1, p0}, Lcom/intermedia/view/AddReferralDialog$$Lambda$7;-><init>(Lcom/intermedia/view/AddReferralDialog;)V

    sget-object v2, Lcom/intermedia/view/AddReferralDialog$$Lambda$8;->$instance:Lio/reactivex/functions/Consumer;

    .line 79
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 81
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;->availableTextViewIsInvisible()Lio/reactivex/Flowable;

    move-result-object v0

    .line 82
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object v1, v1, Lcom/intermedia/view/AddReferralDialog$ViewHost;->availableTextView:Landroid/widget/TextView;

    .line 83
    invoke-static {v1}, Lcom/intermedia/util/ViewUtils;->setInvisible(Landroid/view/View;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lcom/intermedia/view/AddReferralDialog$$Lambda$9;->$instance:Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 86
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;->doneButtonEnabled()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/intermedia/view/AddReferralDialog$$Lambda$10;->get$Lambda(Lcom/intermedia/view/AddReferralDialog$ViewHost;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lcom/intermedia/view/AddReferralDialog$$Lambda$11;->$instance:Lio/reactivex/functions/Consumer;

    .line 87
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 89
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;->referralCodeIsValid()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/intermedia/view/AddReferralDialog$$Lambda$12;->get$Lambda(Lcom/intermedia/view/AddReferralDialog$ViewHost;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lcom/intermedia/view/AddReferralDialog$$Lambda$13;->$instance:Lio/reactivex/functions/Consumer;

    .line 90
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 92
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;->showErrorSnackbar()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/AddReferralDialog$$Lambda$14;

    invoke-direct {v1, p0}, Lcom/intermedia/view/AddReferralDialog$$Lambda$14;-><init>(Lcom/intermedia/view/AddReferralDialog;)V

    sget-object v2, Lcom/intermedia/view/AddReferralDialog$$Lambda$15;->$instance:Lio/reactivex/functions/Consumer;

    .line 93
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static final synthetic lambda$new$4$AddReferralDialog(Lcom/intermedia/view/AddReferralDialog$ViewHost;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-static {p0, p1}, Lcom/intermedia/view/AddReferralDialog$ViewHost;->access$000(Lcom/intermedia/view/AddReferralDialog$ViewHost;Z)V

    return-void
.end method

.method private showErrorSnackbar()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    invoke-virtual {v0}, Lcom/intermedia/view/AddReferralDialog$ViewHost;->resetLoading()V

    .line 104
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->sorryThatDidntWorkString:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object v1, v1, Lcom/intermedia/view/AddReferralDialog$ViewHost;->referralEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 99
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method final synthetic lambda$new$0$AddReferralDialog(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->viewModel:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Inputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Inputs;->doneButtonClicked()V

    .line 64
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    invoke-virtual {p1}, Lcom/intermedia/view/AddReferralDialog$ViewHost;->setLoading()V

    return-void
.end method

.method final synthetic lambda$new$1$AddReferralDialog(Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "profileMenu_referralAdded"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/AddReferralDialog$ViewHost;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/AddReferralDialog$ViewHost;->thatWorkedString:Ljava/lang/String;

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->referralEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method final synthetic lambda$new$2$AddReferralDialog(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object p1, p0, Lcom/intermedia/view/AddReferralDialog;->viewHost:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/AddReferralDialog$ViewHost;->referralEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/intermedia/util/ValidationUtils;->clearDrawables(Landroid/widget/TextView;)V

    return-void
.end method

.method final synthetic lambda$new$3$AddReferralDialog(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/intermedia/view/AddReferralDialog;->dismiss()V

    return-void
.end method

.method final synthetic lambda$new$5$AddReferralDialog(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/intermedia/view/AddReferralDialog;->showErrorSnackbar()V

    return-void
.end method
