.class public final enum Lcom/intermedia/libs/rx/RxNotification;
.super Ljava/lang/Enum;
.source "RxNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intermedia/libs/rx/RxNotification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intermedia/libs/rx/RxNotification;

.field public static final enum INSTANCE:Lcom/intermedia/libs/rx/RxNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/intermedia/libs/rx/RxNotification;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intermedia/libs/rx/RxNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Lcom/intermedia/libs/rx/RxNotification;

    sget-object v1, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    aput-object v1, v0, v2

    sput-object v0, Lcom/intermedia/libs/rx/RxNotification;->$VALUES:[Lcom/intermedia/libs/rx/RxNotification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intermedia/libs/rx/RxNotification;
    .locals 1

    .line 3
    const-class v0, Lcom/intermedia/libs/rx/RxNotification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intermedia/libs/rx/RxNotification;

    return-object p0
.end method

.method public static values()[Lcom/intermedia/libs/rx/RxNotification;
    .locals 1

    .line 3
    sget-object v0, Lcom/intermedia/libs/rx/RxNotification;->$VALUES:[Lcom/intermedia/libs/rx/RxNotification;

    invoke-virtual {v0}, [Lcom/intermedia/libs/rx/RxNotification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intermedia/libs/rx/RxNotification;

    return-object v0
.end method
