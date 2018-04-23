.class public final Lcom/intermedia/view/ChangeUsernameDialog;
.super Landroid/app/AlertDialog;
.source "ChangeUsernameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;
    }
.end annotation


# instance fields
.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

.field private viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;


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

    iput-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    const v0, 0x7f0c0044

    const/4 v1, 0x0

    .line 43
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/intermedia/view/ChangeUsernameDialog;->setView(Landroid/view/View;)V

    .line 45
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 47
    invoke-virtual {p0}, Lcom/intermedia/view/ChangeUsernameDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0}, Lcom/intermedia/view/ChangeUsernameDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 50
    new-instance v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    invoke-direct {v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;-><init>()V

    iput-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    .line 51
    new-instance v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    const v1, 0x7f0a009f

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {v0, p1}, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    .line 53
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->titleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->changeUsernameString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "profileMenu_usernameShown"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding2/InitialValueObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object v1, v1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$0;->get$Lambda(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$1;->$instance:Lio/reactivex/functions/Consumer;

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/jakewharton/rxbinding2/InitialValueObservable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 60
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->doneButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$2;-><init>(Lcom/intermedia/view/ChangeUsernameDialog;)V

    sget-object v2, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$3;->$instance:Lio/reactivex/functions/Consumer;

    .line 61
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 66
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;->changeUsernameApiSuccess()Lio/reactivex/Flowable;

    move-result-object v0

    .line 67
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$4;

    invoke-direct {v1, p0}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$4;-><init>(Lcom/intermedia/view/ChangeUsernameDialog;)V

    sget-object v2, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$5;->$instance:Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 74
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;->clearDrawables()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$6;

    invoke-direct {v1, p0}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$6;-><init>(Lcom/intermedia/view/ChangeUsernameDialog;)V

    .line 75
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 77
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;->dismissDialog()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$7;

    invoke-direct {v1, p0}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$7;-><init>(Lcom/intermedia/view/ChangeUsernameDialog;)V

    sget-object v2, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$8;->$instance:Lio/reactivex/functions/Consumer;

    .line 78
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 80
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;->availableTextViewIsInvisible()Lio/reactivex/Flowable;

    move-result-object v0

    .line 81
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object v1, v1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->availableTextView:Landroid/widget/TextView;

    .line 82
    invoke-static {v1}, Lcom/intermedia/util/ViewUtils;->setInvisible(Landroid/view/View;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$9;->$instance:Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 85
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;->doneButtonEnabled()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$10;->get$Lambda(Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$11;->$instance:Lio/reactivex/functions/Consumer;

    .line 86
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 88
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;->prefillUsername()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object v1, v1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$12;->get$Lambda(Landroid/widget/EditText;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$13;->$instance:Lio/reactivex/functions/Consumer;

    .line 89
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 91
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;->showErrorSnackbar()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$14;

    invoke-direct {v1, p0}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$14;-><init>(Lcom/intermedia/view/ChangeUsernameDialog;)V

    sget-object v2, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$15;->$instance:Lio/reactivex/functions/Consumer;

    .line 92
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 94
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object v0, v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

    invoke-interface {v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;->usernameIsAvailable()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$16;->get$Lambda(Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$17;->$instance:Lio/reactivex/functions/Consumer;

    .line 95
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static final synthetic lambda$new$5$ChangeUsernameDialog(Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-static {p0, p1}, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->access$000(Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;Z)V

    return-void
.end method

.method private showErrorSnackbar()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    invoke-virtual {v0}, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->resetLoading()V

    .line 106
    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->sorryThatDidntWorkString:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object v1, v1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 101
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method final synthetic lambda$new$0$ChangeUsernameDialog(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewModel:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;->doneButtonClicked()V

    .line 63
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    invoke-virtual {p1}, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->setLoading()V

    return-void
.end method

.method final synthetic lambda$new$1$ChangeUsernameDialog(Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "profileMenu_usernameAdded"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->thatWorkedString:Ljava/lang/String;

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object v0, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method final synthetic lambda$new$2$ChangeUsernameDialog(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    iget-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog;->viewHost:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    iget-object p1, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/intermedia/util/ValidationUtils;->clearDrawables(Landroid/widget/TextView;)V

    return-void
.end method

.method final synthetic lambda$new$3$ChangeUsernameDialog(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/intermedia/view/ChangeUsernameDialog;->dismiss()V

    return-void
.end method

.method final synthetic lambda$new$4$ChangeUsernameDialog(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/intermedia/view/ChangeUsernameDialog;->showErrorSnackbar()V

    return-void
.end method
