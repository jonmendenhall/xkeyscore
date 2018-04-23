.class public final enum Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;
.super Ljava/lang/Enum;
.source "S3KeyFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/S3KeyFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterRuleName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

.field public static final enum Prefix:Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

.field public static final enum Suffix:Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    const-string v1, "Prefix"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;->Prefix:Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    .line 33
    new-instance v0, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    const-string v1, "Suffix"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;->Suffix:Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    sget-object v1, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;->Prefix:Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;->Suffix:Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;->$VALUES:[Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;
    .locals 1

    .line 31
    const-class v0, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;->$VALUES:[Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;

    return-object v0
.end method


# virtual methods
.method public newRule()Lcom/amazonaws/services/s3/model/FilterRule;
    .locals 2

    .line 47
    new-instance v0, Lcom/amazonaws/services/s3/model/FilterRule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/FilterRule;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/FilterRule;->withName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/FilterRule;

    move-result-object v0

    return-object v0
.end method

.method public newRule(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/FilterRule;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName;->newRule()Lcom/amazonaws/services/s3/model/FilterRule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/FilterRule;->withValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/FilterRule;

    move-result-object p1

    return-object p1
.end method
