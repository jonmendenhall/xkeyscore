.class public final enum Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
.super Ljava/lang/Enum;
.source "ExtraMaterialsDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConflictResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

.field public static final enum FAIL_FAST:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

.field public static final enum OVERRIDDEN:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

.field public static final enum OVERRIDE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    const-string v1, "FAIL_FAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->FAIL_FAST:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    .line 40
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    const-string v1, "OVERRIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    .line 42
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    const-string v1, "OVERRIDDEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDDEN:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->FAIL_FAST:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDDEN:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->$VALUES:[Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
    .locals 1

    .line 36
    const-class v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->$VALUES:[Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-object v0
.end method
