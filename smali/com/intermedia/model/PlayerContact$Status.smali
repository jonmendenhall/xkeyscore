.class public final enum Lcom/intermedia/model/PlayerContact$Status;
.super Ljava/lang/Enum;
.source "PlayerContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/PlayerContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intermedia/model/PlayerContact$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intermedia/model/PlayerContact$Status;

.field public static final enum FRIENDS:Lcom/intermedia/model/PlayerContact$Status;

.field public static final enum INBOUND_REQUEST:Lcom/intermedia/model/PlayerContact$Status;

.field public static final enum NOT_FRIENDS:Lcom/intermedia/model/PlayerContact$Status;

.field public static final enum OUTBOUND_REQUEST:Lcom/intermedia/model/PlayerContact$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/intermedia/model/PlayerContact$Status;

    const-string v1, "OUTBOUND_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intermedia/model/PlayerContact$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/model/PlayerContact$Status;->OUTBOUND_REQUEST:Lcom/intermedia/model/PlayerContact$Status;

    new-instance v0, Lcom/intermedia/model/PlayerContact$Status;

    const-string v1, "INBOUND_REQUEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/intermedia/model/PlayerContact$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/model/PlayerContact$Status;->INBOUND_REQUEST:Lcom/intermedia/model/PlayerContact$Status;

    new-instance v0, Lcom/intermedia/model/PlayerContact$Status;

    const-string v1, "FRIENDS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/intermedia/model/PlayerContact$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/model/PlayerContact$Status;->FRIENDS:Lcom/intermedia/model/PlayerContact$Status;

    new-instance v0, Lcom/intermedia/model/PlayerContact$Status;

    const-string v1, "NOT_FRIENDS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/intermedia/model/PlayerContact$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/model/PlayerContact$Status;->NOT_FRIENDS:Lcom/intermedia/model/PlayerContact$Status;

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Lcom/intermedia/model/PlayerContact$Status;

    sget-object v1, Lcom/intermedia/model/PlayerContact$Status;->OUTBOUND_REQUEST:Lcom/intermedia/model/PlayerContact$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intermedia/model/PlayerContact$Status;->INBOUND_REQUEST:Lcom/intermedia/model/PlayerContact$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intermedia/model/PlayerContact$Status;->FRIENDS:Lcom/intermedia/model/PlayerContact$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intermedia/model/PlayerContact$Status;->NOT_FRIENDS:Lcom/intermedia/model/PlayerContact$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/intermedia/model/PlayerContact$Status;->$VALUES:[Lcom/intermedia/model/PlayerContact$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intermedia/model/PlayerContact$Status;
    .locals 1

    .line 13
    const-class v0, Lcom/intermedia/model/PlayerContact$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intermedia/model/PlayerContact$Status;

    return-object p0
.end method

.method public static values()[Lcom/intermedia/model/PlayerContact$Status;
    .locals 1

    .line 13
    sget-object v0, Lcom/intermedia/model/PlayerContact$Status;->$VALUES:[Lcom/intermedia/model/PlayerContact$Status;

    invoke-virtual {v0}, [Lcom/intermedia/model/PlayerContact$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intermedia/model/PlayerContact$Status;

    return-object v0
.end method
