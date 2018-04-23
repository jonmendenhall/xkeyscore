.class final synthetic Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$22;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final arg$1:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;


# direct methods
.method constructor <init>(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$22;->arg$1:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$22;->arg$1:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, p1}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->lambda$new$4$ChangeUsernameDialogViewModel$ViewModel(Lretrofit2/Response;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method
