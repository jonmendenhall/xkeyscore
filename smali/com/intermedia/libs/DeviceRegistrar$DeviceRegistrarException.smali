.class Lcom/intermedia/libs/DeviceRegistrar$DeviceRegistrarException;
.super Ljava/lang/RuntimeException;
.source "DeviceRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/libs/DeviceRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceRegistrarException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/libs/DeviceRegistrar;


# direct methods
.method constructor <init>(Lcom/intermedia/libs/DeviceRegistrar;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/intermedia/libs/DeviceRegistrar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    iput-object p1, p0, Lcom/intermedia/libs/DeviceRegistrar$DeviceRegistrarException;->this$0:Lcom/intermedia/libs/DeviceRegistrar;

    .line 103
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
