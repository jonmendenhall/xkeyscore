.class public Lcom/intermedia/model/retrofit/DeviceTokenBody;
.super Ljava/lang/Object;
.source "DeviceTokenBody.java"


# instance fields
.field public final env:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final token:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/intermedia/model/retrofit/DeviceTokenBody;->env:Ljava/lang/String;

    const-string v0, "androidData"

    .line 16
    iput-object v0, p0, Lcom/intermedia/model/retrofit/DeviceTokenBody;->type:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/intermedia/model/retrofit/DeviceTokenBody;->token:Ljava/lang/String;

    return-void
.end method
