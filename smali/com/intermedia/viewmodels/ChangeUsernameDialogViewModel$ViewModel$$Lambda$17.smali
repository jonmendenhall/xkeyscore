.class final synthetic Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;


# direct methods
.method constructor <init>(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$17;->arg$1:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$17;->arg$1:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->bridge$lambda$1$ChangeUsernameDialogViewModel$ViewModel(Ljava/lang/Throwable;)V

    return-void
.end method
