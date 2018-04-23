.class Lcom/intermedia/CashoutActivity$3;
.super Ljava/lang/Object;
.source "CashoutActivity.java"

# interfaces
.implements Lcom/intermedia/service/ApiUtils$APIResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/CashoutActivity;->onCashoutPressed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
        "Lcom/intermedia/model/Payout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/CashoutActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/CashoutActivity;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/intermedia/CashoutActivity$3;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$3;->this$0:Lcom/intermedia/CashoutActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/intermedia/CashoutActivity;->access$402(Lcom/intermedia/CashoutActivity;Z)Z

    .line 198
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$3;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1, v0}, Lcom/intermedia/CashoutActivity;->access$600(Lcom/intermedia/CashoutActivity;Z)V

    .line 199
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$3;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/util/UIUtils;->showConfirmFailureAlert(Landroid/content/Context;)V

    .line 200
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "cashout_error"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$3;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/CashoutActivity;->access$700(Lcom/intermedia/CashoutActivity;)V

    return-void
.end method

.method public onResult(Lcom/intermedia/model/Payout;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/Payout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 188
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$3;->this$0:Lcom/intermedia/CashoutActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/intermedia/CashoutActivity;->access$402(Lcom/intermedia/CashoutActivity;Z)Z

    .line 189
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$3;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/CashoutActivity;->access$500(Lcom/intermedia/CashoutActivity;)V

    .line 190
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "cashout_completed"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$3;->this$0:Lcom/intermedia/CashoutActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/intermedia/CashoutActivity;->access$600(Lcom/intermedia/CashoutActivity;Z)V

    .line 192
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$3;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/CashoutActivity;->access$700(Lcom/intermedia/CashoutActivity;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    check-cast p1, Lcom/intermedia/model/Payout;

    invoke-virtual {p0, p1}, Lcom/intermedia/CashoutActivity$3;->onResult(Lcom/intermedia/model/Payout;)V

    return-void
.end method
