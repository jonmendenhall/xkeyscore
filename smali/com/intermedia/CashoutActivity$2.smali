.class Lcom/intermedia/CashoutActivity$2;
.super Ljava/lang/Object;
.source "CashoutActivity.java"

# interfaces
.implements Lcom/intermedia/service/ApiUtils$APIResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/CashoutActivity;->loadPayoutsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
        "Lcom/intermedia/model/method/PayoutStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/CashoutActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/CashoutActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/intermedia/CashoutActivity$2;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1    # Lcom/android/volley/VolleyError;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 133
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    .line 134
    invoke-static {}, Lcom/intermedia/user/session/SessionManager;->getInstance()Lcom/intermedia/user/session/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/CashoutActivity$CashoutActivityException;

    const-string v3, "Failed to fetch payout details from API"

    invoke-direct {v2, v3, p1}, Lcom/intermedia/CashoutActivity$CashoutActivityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 133
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method public onResult(Lcom/intermedia/model/method/PayoutStatus;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/method/PayoutStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    iget-object v0, p0, Lcom/intermedia/CashoutActivity$2;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {v0, p1}, Lcom/intermedia/CashoutActivity;->access$302(Lcom/intermedia/CashoutActivity;Lcom/intermedia/model/method/PayoutStatus;)Lcom/intermedia/model/method/PayoutStatus;

    .line 125
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$2;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/CashoutActivity;->access$300(Lcom/intermedia/CashoutActivity;)Lcom/intermedia/model/method/PayoutStatus;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$2;->this$0:Lcom/intermedia/CashoutActivity;

    iget-object p1, p1, Lcom/intermedia/CashoutActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$2;->this$0:Lcom/intermedia/CashoutActivity;

    iget-object p1, p1, Lcom/intermedia/CashoutActivity;->balanceAmountTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/intermedia/CashoutActivity$2;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {v0}, Lcom/intermedia/CashoutActivity;->access$300(Lcom/intermedia/CashoutActivity;)Lcom/intermedia/model/method/PayoutStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountUnpaid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    check-cast p1, Lcom/intermedia/model/method/PayoutStatus;

    invoke-virtual {p0, p1}, Lcom/intermedia/CashoutActivity$2;->onResult(Lcom/intermedia/model/method/PayoutStatus;)V

    return-void
.end method
