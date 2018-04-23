.class final synthetic Lcom/intermedia/view/AddReferralDialog$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/view/AddReferralDialog$ViewHost;


# direct methods
.method private constructor <init>(Lcom/intermedia/view/AddReferralDialog$ViewHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/AddReferralDialog$$Lambda$12;->arg$1:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/view/AddReferralDialog$ViewHost;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lcom/intermedia/view/AddReferralDialog$$Lambda$12;

    invoke-direct {v0, p0}, Lcom/intermedia/view/AddReferralDialog$$Lambda$12;-><init>(Lcom/intermedia/view/AddReferralDialog$ViewHost;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$$Lambda$12;->arg$1:Lcom/intermedia/view/AddReferralDialog$ViewHost;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/intermedia/view/AddReferralDialog;->lambda$new$4$AddReferralDialog(Lcom/intermedia/view/AddReferralDialog$ViewHost;Z)V

    return-void
.end method
