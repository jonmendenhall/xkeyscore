.class final synthetic Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final arg$1:Lcom/intermedia/network/ApiErrorParser;


# direct methods
.method private constructor <init>(Lcom/intermedia/network/ApiErrorParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$11;->arg$1:Lcom/intermedia/network/ApiErrorParser;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/network/ApiErrorParser;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$11;

    invoke-direct {v0, p0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$11;-><init>(Lcom/intermedia/network/ApiErrorParser;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$11;->arg$1:Lcom/intermedia/network/ApiErrorParser;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, p1}, Lcom/intermedia/network/ApiErrorParser;->parse(Lretrofit2/Response;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method
