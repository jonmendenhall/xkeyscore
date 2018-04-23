.class public final enum Lcom/firebase/ui/common/ChangeEventType;
.super Ljava/lang/Enum;
.source "ChangeEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/firebase/ui/common/ChangeEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/ui/common/ChangeEventType;

.field public static final enum ADDED:Lcom/firebase/ui/common/ChangeEventType;

.field public static final enum CHANGED:Lcom/firebase/ui/common/ChangeEventType;

.field public static final enum MOVED:Lcom/firebase/ui/common/ChangeEventType;

.field public static final enum REMOVED:Lcom/firebase/ui/common/ChangeEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/firebase/ui/common/ChangeEventType;

    const-string v1, "ADDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/common/ChangeEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/ui/common/ChangeEventType;->ADDED:Lcom/firebase/ui/common/ChangeEventType;

    .line 16
    new-instance v0, Lcom/firebase/ui/common/ChangeEventType;

    const-string v1, "CHANGED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/common/ChangeEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/ui/common/ChangeEventType;->CHANGED:Lcom/firebase/ui/common/ChangeEventType;

    .line 21
    new-instance v0, Lcom/firebase/ui/common/ChangeEventType;

    const-string v1, "REMOVED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/common/ChangeEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/ui/common/ChangeEventType;->REMOVED:Lcom/firebase/ui/common/ChangeEventType;

    .line 26
    new-instance v0, Lcom/firebase/ui/common/ChangeEventType;

    const-string v1, "MOVED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/firebase/ui/common/ChangeEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/ui/common/ChangeEventType;->MOVED:Lcom/firebase/ui/common/ChangeEventType;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/firebase/ui/common/ChangeEventType;

    sget-object v1, Lcom/firebase/ui/common/ChangeEventType;->ADDED:Lcom/firebase/ui/common/ChangeEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/firebase/ui/common/ChangeEventType;->CHANGED:Lcom/firebase/ui/common/ChangeEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/firebase/ui/common/ChangeEventType;->REMOVED:Lcom/firebase/ui/common/ChangeEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/firebase/ui/common/ChangeEventType;->MOVED:Lcom/firebase/ui/common/ChangeEventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/firebase/ui/common/ChangeEventType;->$VALUES:[Lcom/firebase/ui/common/ChangeEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/ui/common/ChangeEventType;
    .locals 1

    .line 6
    const-class v0, Lcom/firebase/ui/common/ChangeEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/firebase/ui/common/ChangeEventType;

    return-object p0
.end method

.method public static values()[Lcom/firebase/ui/common/ChangeEventType;
    .locals 1

    .line 6
    sget-object v0, Lcom/firebase/ui/common/ChangeEventType;->$VALUES:[Lcom/firebase/ui/common/ChangeEventType;

    invoke-virtual {v0}, [Lcom/firebase/ui/common/ChangeEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/ui/common/ChangeEventType;

    return-object v0
.end method
