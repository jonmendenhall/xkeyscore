.class final synthetic Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final arg$1:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;


# direct methods
.method constructor <init>(Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$17;->arg$1:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$17;->arg$1:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, p1}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->lambda$new$2$AddReferralDialogViewModel$ViewModel(Lretrofit2/Response;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method
